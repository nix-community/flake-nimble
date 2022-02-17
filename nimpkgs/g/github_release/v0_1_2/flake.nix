{
  description = ''github-release package'';
  inputs.src-github_release-v0_1_2.flake = false;
  inputs.src-github_release-v0_1_2.type = "github";
  inputs.src-github_release-v0_1_2.owner = "kdheepak";
  inputs.src-github_release-v0_1_2.repo = "github-release";
  inputs.src-github_release-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-github_release-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-github_release-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-github_release-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}