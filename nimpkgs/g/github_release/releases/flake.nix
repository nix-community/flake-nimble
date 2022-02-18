{
  description = ''github-release package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-github_release-releases.flake = false;
  inputs.src-github_release-releases.type = "github";
  inputs.src-github_release-releases.owner = "kdheepak";
  inputs.src-github_release-releases.repo = "github-release";
  inputs.src-github_release-releases.ref = "refs/tags/releases";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-github_release-releases, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-github_release-releases;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-github_release-releases"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}