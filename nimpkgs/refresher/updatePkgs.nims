#!/usr/bin/env -S nim --hints:off

import std/[algorithm, strformat, json, strutils, sequtils, os]

var 
  startAt = '0'
  endAt = 'z'

if paramCount() > 2:
  startAt = paramStr(3)[0]
if paramCount() > 3:
  endAt = paramStr(4)[0]

let
  pkgsURL = "https://raw.githubusercontent.com/nim-lang/packages/master/packages.json"
  pkgsJSON = gorge fmt"curl -s {pkgsURL}|jq '.|=sort_by(.name)'"
  pkgs = parseJson pkgsJSON
  pkgItems = pkgs.items.toSeq
    .filterIt(it{"name"}.getStr.toLower[0] >= startAt)
    .filterIt(it{"name"}.getStr.toLower[0] <= endAt)


for pkg in pkgItems:
  if pkg.hasKey("url") and "git" == pkg["method"].getStr:
    let pkgJSON = $pkg
    exec(fmt"echo {pkgJSON.quoteShell}|./updatePkg.nims")

