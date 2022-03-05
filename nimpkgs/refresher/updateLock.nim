import std/[json, sequtils, strutils, os]

let 
  base = paramStr(1).parseFile
  flakeNimbleLibLock = base["flakeNimbleLibLock"]
  nimPkgsLock = base["nimPkgsLock"]

for i in 2..paramCount():
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
  writeFile(d, j.pretty & "\n")

echo paramCount()
