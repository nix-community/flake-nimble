{
  description = ''github-release package'';
  inputs.src-github_release-releases.flake = false;
  inputs.src-github_release-releases.type = "github";
  inputs.src-github_release-releases.owner = "kdheepak";
  inputs.src-github_release-releases.repo = "github-release";
  inputs.src-github_release-releases.ref = "refs/tags/releases";
  
  outputs = { self, nixpkgs, src-github_release-releases, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-github_release-releases;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-github_release-releases"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}