import private/nix

import nimblepkg/common,
  nimblepkg/download,
  nimblepkg/packageinfo,
  nimblepkg/options,
  nimblepkg/version,
  nimblepkg/packageparser,
  nimblepkg/cli

import std/algorithm, std/json, std/os, std/osproc, std/sequtils, std/streams,
    std/strutils, std/tables, std/osproc, std/tables, std/random, std/uri,
    std/monotimes, std/times

proc packageVersions(pkg: Package): OrderedTable[Version, string] =
  let downMethod = pkg.downloadMethod.getDownloadMethod()
  case downMethod
  of DownloadMethod.git:
    getTagsListRemote(pkg.url, downMethod).getVersionList()
  of DownloadMethod.hg:
    initOrderedTable[Version, string]()

proc prefetchVersion(pkg: Package; tag = ""): JsonNode =
  case pkg.downloadMethod.getDownloadMethod()
  of DownloadMethod.git:
    var
      url = pkg.url
      uri = parseUri pkg.url
      subdir = ""
    if uri.query != "":
      if uri.query.startsWith("subdir="):
        subdir = uri.query[7 .. ^1]
      uri.query = ""
      url = $uri
    var args = @["--quiet", "--url", url]
    if tag != "":
      args.add "--rev"
      args.add tag
    result = execProcess(
      "nix-prefetch-git",
      args = args,
      options = {poEchoCmd, poUsePath}).parseJson
    if subdir != "":
      result["subdir"] = %* subdir
  of DownloadMethod.hg:
    result = execProcess(
      "nix-prefetch-hg",
      args = [pkg.url],
      options = {poEchoCmd, poUsePath}).parseJson

proc sourcesList(pkg: Package; prev: JsonNode): JsonNode =
  ## Generate a JSON array of source code versions and digests.
  ## The result is a combination of previously collected
  ## and freshly generated data.
  result = newJObject()
  result["method"] = %* pkg.downloadMethod
  var table = initOrderedTable[Version, JsonNode]()

  if prev.contains "src":
    let src = prev["src"]
    if src.contains "versions":
      for e in src["versions"].items:
        # collect previous versions
        let version = e["name"].getStr.Version
        table[version] = e["value"]

  for version, tag in pkg.packageVersions:
    # collect current versions
    if table.contains version:
      table[version]["url"] = %* pkg.url
    else:
      table[version] = prefetchVersion(pkg, tag)

  var versionList = newJArray()
  for version, value in table:
    versionList.add( %*
      {"name": (string)version
      , "value": value
      })
  if versionList.len == 0:
    versionList.add( %*
      {"name": "HEAD"
      , "value": prefetchVersion(pkg)
      })
  proc cmpVer(x, y: JsonNode): int =
    let
      xn = x["name"].str
      yn = y["name"].str
    if xn == "HEAD" and yn == "HEAD": return 0
    elif xn == "HEAD": return 1
    elif yn == "HEAD": return -1
    cmp(newVersion(xn), newVersion(yn))
  sort(versionList.elems, cmpVer, SortOrder.Descending)
  result["versions"] = versionList

proc generatePackageJson(pkg: Package; prev: JsonNode): JsonNode =
  %*{"homepage": pkg.web, "src": sourcesList(pkg, prev)}

proc createPackageFile(path: string; pkg: Package) =
  let jsonPkg = generatePackageJson(pkg, newJObject())
  writeFile(path, pretty jsonPkg)

proc updatePackageFile(path: string; pkg: Package) =
  let jsonPkg = generatePackageJson(pkg, parseFile path)
  writeFile(path, pretty jsonPkg)

proc exit() {.noconv.} =
  var indexList: seq[Value]
  for kind, path in walkDir("packages", relative = true):
    if kind == pcFile and path.endsWith ".json":
      var name = path
      name.removeSuffix ".json";
      let pair = [("name", name.toNix), ("value", ("./"&path).toPath)].toNix
      indexList.add(pair)
  sort(indexList) do (x, y: Value) -> int:
    cmp(x["name"].str, y["name"].str)
  let stream = openFileStream("packages/default.nix", fmWrite)
  stream.writeLine("[")
  for pair in indexList:
    stream.writeLine(pair)
  stream.writeLine("]")
  close stream
  quit 0

func `$`(d: Duration): string =
  const units = [(Weeks, "w"), (Days, "d"), (Hours, "h"), (Minutes, "m"), (Seconds, "s")]
  let parts = d.toParts
  for unit in units:
    let n = parts[unit[0]]
    if n != 0.int64 or result.len != 0:
      result.add $n & unit[1]
  if result.len == 0:
    result = "0s"

proc generateSources(options: Options) =
  setControlCHook(exit)
  let args = options.action.arguments
  var pkgList: seq[Package]
  if args.len == 0:
    pkgList = options.getPackageList()
  else:
    for arg in args:
      var pkg: Package
      if getPackage(arg, options, pkg):
        pkgList.add pkg
  randomize()
  shuffle pkgList
    # This could take a while, and the error handling is poor.
    # Shuffle the package list so eventually everything gets done.

  createDir "packages"
  let t0 = getMonoTime()
  for i, pkg in pkgList:
    if pkg.url == "": continue
    doAssert(pkg.name != "default")

    let elapsedMillis = (getMonoTime() - t0).inMilliseconds.float64
    let etaMillis = elapsedMillis / float64(i+1) * float64(pkgList.len - i)
    let eta = $initDuration(milliseconds = etaMillis.int64)
    let percent = 100*i div pkgList.len + 1
    let progress = "[" & $percent & "% " & $(i+1) & "/" & $pkgList.len & " ETA~" & eta & "]"

    let jsonPath = "packages/" & pkg.name & ".json"
    if existsFile jsonPath:
      echo progress, " update ", jsonPath
      try:
        updatePackageFile(jsonPath, pkg)
      except:
        echo "failed to update package for ", pkg.name
        echo getCurrentExceptionMsg()
    else:
      echo progress, " create ", jsonPath
      try: createPackageFile(jsonPath, pkg)
      except:
        echo "failed to create package for ", pkg.name
        echo getCurrentExceptionMsg()
  exit()

proc toNix(dep: PkgTuple): Value =
  [ ("name", dep.name.toNix)
  , ("range", ($dep.ver).toNix)
  ].toNix

proc generateInfo(options: Options) =
  let args = options.action.arguments
  if args.len != 1:
    echo "a single package directory argument must be passed"
    quit -1
  let pkgDir = args[0]
  cli.setSuppressMessages(true)
  let p = getPkgInfo(pkgDir, options)
  let nimbleAttrs =
    [ ("specialVersion", p.version.toNix)
    , ("skipDirs", p.skipDirs.toNix)
    , ("skipFiles", p.skipFiles.toNix)
    , ("skipExt", p.skipExt.toNix)
    , ("installDirs", p.installDirs.toNix)
    , ("installFiles", p.installFiles.toNix)
    , ("installExt", p.installExt.toNix)
    , ("requires", p.requires.map(toNix).toNix)
    , ("bin", p.bin.toNix)
    , ("binDir", (if p.binDir == "": "." else: p.binDir).toNix)
    , ("srcDir", (if p.srcDir == "": "." else: p.srcDir).toNix)
    , ("backend", p.backend.toNix)
    , ("foreignDeps", p.foreignDeps.toNix)
  ].toNix

  let attrs =
    [ ("pname", p.name.toNix)
    , ("version", p.version.toNix)
    , ("nimble", nimbleAttrs)
    , ("meta",
      [ ("description", p.description.toNix)
      , ("license", p.license.toNix)
      ].toNix)
    ].toNix
  echo attrs

proc main() =
  let options = parseCmdLine()
  case options.action.typ
  of actionCustom:
    case options.action.command
    of "generate":
      generateSources(options)
    of "info":
      generateInfo(options)
    else:
      echo "unhandled command ", options.action.command
      quit -1
  else:
    echo "unhandled action ", options.action.typ
    quit -1

main()
