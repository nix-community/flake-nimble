{
  description = ''libgit2 wrapper for Nim'';
  inputs.src-nimgit2-v0_3_0.flake = false;
  inputs.src-nimgit2-v0_3_0.type = "github";
  inputs.src-nimgit2-v0_3_0.owner = "genotrance";
  inputs.src-nimgit2-v0_3_0.repo = "nimgit2";
  inputs.src-nimgit2-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-nimgit2-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgit2-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgit2-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}