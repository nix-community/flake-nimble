import std/[json, sequtils, strutils, os]

let 
  flakeNimbleLibLock = %* {
    "lastModified": 0,
    "narHash": "sha256-88FkQfLAsTaX6EmtBF5Kr41Ff9nubkDOLx6otLSGS0o=",
    "owner": "riinr",
    "repo": "nim-flakes-lib",
    "rev": "605eb3aa5ab508f8b0dc6589e949e0cc7dc432d7",
    "type": "github"
  }
  nimPkgsLock = %* {
    "lastModified": 0,
    "narHash": "sha256-2KA6/J5BT+7scrKCcd3lsy3laazgbhQbsy8OIcKElFM=",
    "rev": "97fc2d34320140f269274931f25431652873deb8",
  }

for i in 1..paramCount():
  let 
    d = paramStr(i)
    j = d.parseFile
    ks = j["nodes"].keys.toSeq.filterIt(
      j["nodes"][it].hasKey("locked") and
      j["nodes"][it]["locked"].hasKey("dir") and
      j["nodes"][it]["locked"]["dir"].getStr.startsWith("nimpkgs/")
    )
  for k in ks:
    let locked = j["nodes"][k]["locked"]
    locked["lastModified"] = nimPkgsLock["lastModified"]
    locked["narHash"] = nimPkgsLock["narHash"]
    locked["rev"] = nimPkgsLock["rev"]

  if j["nodes"].hasKey "flakeNimbleLib":
    j["nodes"]["flakeNimbleLib"]["locked"] = flakeNimbleLibLock
  echo d
  writeFile(d, j.pretty)

echo paramCount()
