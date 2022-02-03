#!/usr/bin/env -S nim --hints:off

import std/[strformat, json, strutils, sequtils, os, strscans]

proc isTag(x: string): bool =
  x.startsWith("refs/tags")

proc isHead(x: string): bool =
  x.startsWith("refs/heads") and (
    x.endsWith("/master") or 
    x.endsWith("/main") or
    x.endsWith("/staging") or 
    x.endsWith("/unstable") or
    x.endsWith("/develop")
  )

proc isKey(x: string): auto =
  return proc (refInfo: JsonNode): bool =
    refInfo.hasKey x

proc getRefs(url: JsonNode): seq[string] =
  let
    removeUnwanted = "|grep -v gh-pages|grep -v '{}'"
    removeHash = "|cut -f 2"
    gitCfg = "-c credential.helper='!printf quit=1'"
    lsRemote = fmt"git ls-remote --head --tags "
    listTags = fmt"{lsRemote} {url} {removeUnwanted} {removeHash}"
  gorge(listTags).split("\n")


proc staticUrl(pkg: JsonNode, gitRef: string): seq[string] =
  let 
    name = pkg["name"].getStr
    nameLo = pkg["name"].getStr.toLower
    url = pkg["url"].getStr
  if url.contains "github.com":
    let prefix = url.replace(".git", "")
      .replace("ssh+git@github.com:", "https://raw.githubusercontent.com/")
      .replace("git@github.com:", "https://raw.githubusercontent.com/")
      .replace("//github.com/", "//raw.githubusercontent.com/")
      .strip(chars = {'/'})
    return @[
      fmt"{prefix}/{gitRef}/{name}.nimble",
      fmt"{prefix}/{gitRef}/{nameLo}.nimble"
    ]
  if url.contains "git.sr.ht":
    return @[
      fmt"{url}/blob/{gitRef}/{name}.nimble",
      fmt"{url}/blob/{gitRef}/{nameLo}.nimble"
    ]
  if url.contains "gitlab.com":
    let tag = gitRef.replace("refs/heads/", "").replace("refs/tags/", "")
    let prefix = url.replace(".git", "")
    return @[
      fmt"{prefix}/-/raw/{tag}/{name}.nimble",
      fmt"{prefix}/-/raw/{tag}/{nameLo}.nimble"
    ]
  let tag = gitRef.replace("refs/heads/", "").replace("refs/tags/", "")
  let prefix = url.replace(".git", "")
  return @[
    fmt"{prefix}/raw/{tag}/{name}.nimble",
    fmt"{prefix}/raw/{tag}/{nameLo}.nimble"
  ]


proc refName(refInfo: JsonNode): string =
  refInfo["ref"].getStr
    .replace("refs/heads/", "")
    .replace("refs/tags/", "")
    .replace(".", "_")

proc fetchInfo(pkg: JsonNode): auto =
  return proc(gitRef: string): JsonNode =
    let
      name = pkg["name"].getStr
      nameLo = pkg["name"].getStr.toLower
      urls =  pkg.staticUrl gitRef
      tmpDir = fmt"/tmp/nimpkgs/{nameLo}/{gitRef}"
      flakeName = refName(%*{ "ref": gitRef })
      flakeDir = fmt"../{nameLo[0]}/{name}/{flakeName}"
    if fileExists(fmt"{flakeDir}/meta.json"):
      echo(fmt"Cache {flakeDir}/meta.json")
      return readFile(fmt"{flakeDir}/meta.json").parseJson
    for url in urls.deduplicate:
      mkdir tmpDir
      echo fmt"Downloading {flakeDir} from {url}"
      exec(fmt"cd {tmpDir}; curl -f -s -O {url} || true")
    let (versionInfo, code) = gorgeEx fmt"cd {tmpDir}; nimble dump --json"
    if code == 0:
      let info = parseJson versionInfo
      info["ref"] = %* gitRef
      return info
    elif tmpDir.contains("heads"):
      let msg = fmt"NoNimble file {name} {urls} {versionInfo}"
      exec(fmt"echo {msg.quoteShell} 1>&2")
    return %* {
      "ref": gitRef,
      "name": pkg["name"],
      "url": pkg["url"],
      "version": %* flakeName,
      "desc": pkg["description"],
      "license": pkg["license"],
    }

iterator projectInputs(refs: JsonNode): string =
  for refInfo in refs.items:
    let 
      gitRef = refInfo.refName
      name = refInfo["name"].getStr
    yield fmt"""inputs."{name}-{gitRef}".url = "path:./{gitRef}";"""

proc projectFlake(pkg: JsonNode): auto =
  let 
    name = pkg["name"].getStr
    nameLo = pkg["name"].getStr.toLower
    flakeDir = fmt"../{nameLo[0]}/{name}"
    description = pkg["description"].getStr
    heads = pkg["heads"].projectInputs.toSeq.join "\n  "
    tags = pkg["tags"].projectInputs.toSeq.join "\n  "
    flakeContent = fmt"""{{
  description = ''{description}'';
  {heads}
  {tags}
  outputs = {{ self, nixpkgs, ...}}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {{
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    }};
}}"""
  mkdir flakeDir
  writeFile(fmt"{flakeDir}/flake.nix", flakeContent)
  writeFile(fmt"{flakeDir}/meta.json", $pkg)
  exec(fmt"cp ../lib.nix {flakeDir}/lib.nix")

proc inputInfo(refInfo: JsonNode, url: string): JsonNode =
  let nimbleUrls = (%* {
    "name": refInfo["name"].getStr,
    "url": url
  }).staticUrl(refInfo["ref"].getStr)
  for nimbleUrl in nimbleUrls:
    let repoInfo = nimbleUrl.replace("https://", "").split("/")
    let owner = repoInfo[1]
    let repo = repoInfo[2]
    let repoType =
        if repoInfo[0].contains "github":
          "github"
        elif repoInfo[0].contains "gitlab":
          "gitlab"
        elif repoInfo[0].contains "bitbucket":
          "bitbucket"
        else:
          "other"
    return %* {
      "type": %* repoType,
      "owner": %* owner,
      "ref": %* refInfo["ref"],
      "repo": %* repo,
    }

iterator refInputs(refInfo: JsonNode, url: string): string =
  let 
    gitRef = refInfo.refName
    name = refInfo["name"].getStr
    inputInfo = refInfo.inputInfo url
    itName = fmt"src-{name}-{gitRef}"
  yield fmt"""
  inputs.{itName}.flake = false;
  inputs.{itName}.type = "{inputInfo["type"].getStr}";
  inputs.{itName}.owner = "{inputInfo["owner"].getStr()}";
  inputs.{itName}.repo = "{inputInfo["repo"].getStr}";
  inputs.{itName}.ref = "{inputInfo["ref"].getStr}";
  """
  if refInfo.hasKey "requires":
    for dep in refInfo["requires"].items:
      let 
        depName = dep["name"].getStr.toLower
        initial = depName[0]
      if depName == "nim":
        continue
      yield fmt"""

  inputs."{depName}".url = "path:../../../{initial}/{depName}";
  inputs."{depName}".type = "github";
  inputs."{depName}".owner = "riinr";
  inputs."{depName}".repo = "flake-nimble";
  inputs."{depName}".ref = "flake-pinning";
  inputs."{depName}".dir = "nimpkgs/{initial}/{depName}";
"""

proc refsFlake(pkg: JsonNode): auto =
  let 
    name = pkg["name"].getStr
    nameLo = pkg["name"].getStr.toLower
    description = pkg["description"].getStr
    url = pkg["url"].getStr
    refs = pkg["heads"].items.toSeq & pkg["tags"].items.toSeq
  for refInfo in refs:
    let 
      flakeName = refInfo.refName
      flakeDir = fmt"../{nameLo[0]}/{name}/{flakeName}"
      inputs = refInfo.refInputs(url).toSeq.join "\n  "
      itName = fmt"src-{name}-{flakeName}"
      flakeContent = fmt"""{{
  description = ''{description}'';
{inputs}
  outputs = {{ self, nixpkgs, {itName}, ...}}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {{
      inherit self nixpkgs ;
      src = {itName};
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "{itName}"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    }};
}}"""
    mkdir flakeDir
    writeFile(fmt"{flakeDir}/flake.nix", flakeContent)
    writeFile(fmt"{flakeDir}/meta.json", $refInfo)
    exec(fmt"cp ../lib.nix {flakeDir}/lib.nix")

let pkg = parseJson readAllFromStdin()
let refs = pkg["url"].getRefs
pkg["refs"] = %* refs
pkg["tags"] = %* refs.filter(isTag).map(fetchInfo pkg).filter("name".isKey)
pkg["heads"] = %* refs.filter(isHead).map(fetchInfo pkg).filter("name".isKey)

projectFlake pkg
refsFlake pkg
