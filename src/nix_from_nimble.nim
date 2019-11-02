import private/nix

import nimblepkg/download, nimblepkg/packageinfo, nimblepkg/options, nimblepkg/version

import std/algorithm, std/json, std/os, std/osproc, std/sequtils, std/streams,
    std/strutils, std/tables, std/osproc, std/tables, std/random, std/uri

proc toNix(js: JsonNode): Value =
  case js.kind
  of JNull: result = newNull()
  of JBool: result = toNix js.bval
  of JInt: result = toNix js.num
  of JFloat: result = toNix js.fnum
  of JString: result = toNix js.str
  of JObject:
    result = newAttrs()
    for k, v in js.fields:
      result[k] = toNix v
  of JArray:
    result = toNix(map(js.elems, toNix))

proc collect(result: Value; js: JsonNode; nk, jk: string) =
  if js.fields.hasKey jk:
    result.attrs[nk] = toNix js[jk]

proc meta(js: JsonNode): Value =
  result = newAttrs()
  for k, v in js.fields:
    case k
    of "method", "name", "url":
      discard
    else:
      result[k] = toNix v

proc src(js: JsonNode): Value =
  result = newAttrs()
  result.collect(js, "method", "method")
  result.collect(js, "url", "url")

proc prefetch(js: JsonNode): Value =
  let
    url = getStr js["url"]
    cmd = case js["method"].getStr
      of "git": "nix-prefetch-git"
      of "hg": "nix-prefetch-hg"
      else:
        raiseAssert "unhandled source method " & $js["method"]
    (prefetch, code) = execCmdEx(cmd & " " & $js["url"])
  if code == 0:
    result = newAttrs()
    result["url"] = url
    result["js"] = prefetch
  else:
    result = toNix prefetch

proc mainOld() =
  let pkgs = parseFile "packages_official.json"
  var
    values = newAttrs()
    errors = newJArray()
  for jp in pkgs:
    block:
      if jp.fields.hasKey "alias":
        discard
      else:
        let
          np = newAttrs()
        np["meta"] = jp.meta
        np["src"] = prefetch jp
        values[jp["name"].getStr] = np
    #except:
    #  errors.add jp

  stdout.write $values
  if 0 < errors.elems.len:
    stderr.write errors.pretty

proc prefetchVersion(pkg: Package; tag = ""): JsonNode =
  var
    url = pkg.url
    uri = parseUri pkg.url
    subdir = ""
  if uri.query != "":
    if uri.query.startsWith("subdir="):
      subdir = uri.query[7 .. ^1]
    uri.query = ""
    url = $uri
  var args = @[ "--quiet", "--url", url ]
  if tag != "":
    args.add "--ref"
    args.add tag
  result = execProcess(
    "nix-prefetch-git",
    args=args,
    options={poEchoCmd,poUsePath}).parseJson
  if subdir != "":
    result["subdir"] = %* subdir

func metaAttrs(pkg: Package): JsonNode =
  %*
    {"description": pkg.description
    ,"homepage": pkg.web
    ,"license": pkg.license
    }

proc sourcesList(pkg: Package; prev: JsonNode): JsonNode =
  ## Generate a JSON array of source code versions and digests.
  ## The result is a combination of previously collected
  ## and freshly generated data.
  result = newJObject()
  result["method"] = %* pkg.downloadMethod
  if pkg.downloadMethod == "git":
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
      versionList.add(%*
        { "name": (string)version
        , "value": value
        })
    if versionList.len == 0:
      versionList.add(%*
        { "name": "HEAD"
        , "value": prefetchVersion(pkg)
        })
    result["versions"] = versionList

proc generatePackageJson(pkg: Package; prev: JsonNode): JsonNode =
  %*
    { "meta": pkg.metaAttrs
    , "src": sourcesList(pkg, prev)
    }

proc createPackageFile(path: string; pkg: Package) =
  echo "create ", path
  let jsonPkg = generatePackageJson(pkg, newJObject())
  writeFile(path, pretty jsonPkg)

proc updatePackageFile(path: string; pkg: Package) =
  echo "update ", path
  let jsonPkg = generatePackageJson(pkg, parseFile path)
  writeFile(path, pretty jsonPkg)

proc exit() {.noconv.} =
  var indexList: seq[Value]
  for kind, path in walkDir("packages", relative=true):
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

proc main() =
  setControlCHook(exit)
  var pkgList = parseCmdLine().getPackageList()
  shuffle pkgList
    # This could take a while, and the error handling is
    # poor. Shuffle the package list so eventually everything
    # gets done after enough retries.

  createDir "packages"
  for pkg in pkgList:
    #if pkg.url.contains "ehmry":
    if pkg.url == "": continue
    doAssert(pkg.name != "default")
    let jsonPath = "packages/" & pkg.name & ".json"
    if existsFile jsonPath:
      try:
        updatePackageFile(jsonPath, pkg)
      except:
        echo "failed to update package for ", pkg.name
        echo getCurrentExceptionMsg()
        break
    else:
      try: createPackageFile(jsonPath, pkg)
      except:
        echo "failed to create package for ", pkg.name
        echo getCurrentExceptionMsg()
        continue
  exit()

main()
