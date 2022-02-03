{
  description = ''Command line tools for Prologue.'';
  inputs.src-logue-v0_1_2.flake = false;
  inputs.src-logue-v0_1_2.type = "github";
  inputs.src-logue-v0_1_2.owner = "planety";
  inputs.src-logue-v0_1_2.repo = "logue";
  inputs.src-logue-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-logue-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-logue-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-logue-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}