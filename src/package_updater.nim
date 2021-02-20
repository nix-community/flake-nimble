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

proc `%`(dep: PkgTuple): JsonNode =
  %* {"name": dep.name, "range": $dep.ver}

proc `%`(pkg: PackageInfo): JsonNode =
  result = %* {"author": pkg.author
    , "backend": pkg.backend
    , "bin": pkg.bin
    , "binDir": (if pkg.binDir == "": "." else: pkg.binDir)
    , "description": pkg.description
    , "foreignDeps": pkg.foreignDeps
    , "installDirs": pkg.installDirs
    , "installExt": pkg.installExt
    , "installFiles": pkg.installFiles
    , "license": pkg.license
    , "requires": pkg.requires
    , "skipDirs": pkg.skipDirs
    , "skipExt": pkg.skipExt
    , "skipFiles": pkg.skipFiles
    , "specialVersion": pkg.version
    , "srcDir": (if pkg.srcDir == "": "." else: pkg.srcDir)
  }
  var dropKeys = newSeq[string]()
  for key, val in result.fields.pairs:
    if val.kind == JArray and val.len == 0:
      dropKeys.add(key)
  for key in dropKeys:
    result.fields.del(key)

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
    var args = @["--quiet", "--fetch-submodules", "--url", url]
    if tag != "":
      args.add "--rev"
      args.add tag
    result = execProcess(
      "nix-prefetch-git",
      args = args,
      options = {poEchoCmd, poUsePath}).parseJson
    if subdir != "":
      result["subdir"] = %* subdir
    result["method"] = %"git"
  of DownloadMethod.hg:
    result = execProcess(
      "nix-prefetch-hg",
      args = [pkg.url],
      options = {poEchoCmd, poUsePath}).parseJson
    result["method"] = %"hg"

proc sourcesList(pkg: Package; prev: JsonNode; options: Options): JsonNode =
  ## Generate a JSON array of source code versions and digests.
  ## The result is a combination of previously collected
  ## and freshly generated data.
  var table = initOrderedTable[Version, JsonNode]()

  if prev.contains "versions":
    for e in prev["versions"].getElems:
      # collect previous versions
      let version = e["version"].getStr.Version
      table[version] = e

  for version, tag in pkg.packageVersions:
    # collect current versions
    var data = table.mgetOrPut(version, newJObject())
    if not (data.hasKey("nimble") or data.hasKey("source")):
      data.fields.clear()
      let source = prefetchVersion(pkg, tag)
      var pkgPath = source["path"].getStr
      if source.hasKey "subdir":
        pkgPath.add('/')
        pkgPath.add(source["subdir"].getStr)
      data["nimble"] = %getPkgInfo(pkgPath, options)
      data["source"] = source

  result = newJArray()
  for version, value in table.mpairs:
    value["version"] = %($version)
    result.add(value)
  if result.len == 0:
    let
      source = prefetchVersion(pkg)
      nimble = %getPkgInfo(source["path"].getStr, options)
    result.add( %* {"nimble": nimble, "source": source, "version": "HEAD"})
    # publishing an unversioned package is a lazy fuckup
  proc cmpVer(x, y: JsonNode): int =
    let
      xn = x["version"].str
      yn = y["version"].str
    if xn == "HEAD" and yn == "HEAD": return 0
    elif xn == "HEAD": return 1
    elif yn == "HEAD": return -1
    cmp(newVersion(xn), newVersion(yn))
  sort(result.elems, cmpVer, SortOrder.Descending)

proc generatePackageJson(pkg: Package; prev: JsonNode;
    options: Options): JsonNode =
  %*{"homepage": pkg.web, "versions": sourcesList(pkg, prev, options)}

proc createPackageFile(path: string; pkg: Package; options: Options) =
  let jsonPkg = generatePackageJson(pkg, newJObject(), options)
  if jsonPkg["versions"].len > 0:
    writeFile(path, $jsonPkg)

proc updatePackageFile(path: string; pkg: Package; options: Options) =
  let jsonPkg = generatePackageJson(pkg, parseFile path, options)
  if jsonPkg["versions"].len > 0:
    writeFile(path, $jsonPkg)
  else:
    removeFile(path)

proc exit() {.noconv.} =
  type Pair = array[2, string]
  var indexList = newSeq[Pair]()
  for kind, path in walkDir("packages", relative = true):
    if kind == pcFile and path.endsWith ".json":
      var name = path
      name.removeSuffix(".json")
      indexList.add([toLower(name), toPath("./"&path).path])
  sort(indexList) do (x, y: Pair) -> int: cmp(x[0], y[0])
  let stream = openFileStream("packages/default.nix", fmWrite)
  stream.writeLine("{")
  for pair in indexList:
    stream.writeLine("  \"$1\" = $2;" % pair)
  stream.writeLine("}")
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
    if fileExists jsonPath:
      echo progress, " update ", jsonPath
      try:
        updatePackageFile(jsonPath, pkg, options)
      except:
        echo "failed to update package for ", pkg.name
        echo getCurrentExceptionMsg()
    else:
      echo progress, " create ", jsonPath
      try: createPackageFile(jsonPath, pkg, options)
      except:
        echo "failed to create package for ", pkg.name
        echo getCurrentExceptionMsg()
  exit()

proc main() =
  var options = parseCmdLine()
  if options.action.typ != actionCustom:
    options.action = Action(typ: actionCustom)
  generateSources(options)

main()
