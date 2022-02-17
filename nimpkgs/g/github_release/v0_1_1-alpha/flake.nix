{
  description = ''github-release package'';
  inputs.src-github_release-v0_1_1-alpha.flake = false;
  inputs.src-github_release-v0_1_1-alpha.type = "github";
  inputs.src-github_release-v0_1_1-alpha.owner = "kdheepak";
  inputs.src-github_release-v0_1_1-alpha.repo = "github-release";
  inputs.src-github_release-v0_1_1-alpha.ref = "refs/tags/v0.1.1-alpha";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-github_release-v0_1_1-alpha, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-github_release-v0_1_1-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-github_release-v0_1_1-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}