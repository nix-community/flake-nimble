import private/nix

import std/json, std/osproc, std/sequtils, std/tables

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

proc main() =
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

main()
