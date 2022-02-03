{
  description = ''Shaders in Nim.'';
  inputs.src-nimsl-v0_3_2.flake = false;
  inputs.src-nimsl-v0_3_2.type = "github";
  inputs.src-nimsl-v0_3_2.owner = "yglukhov";
  inputs.src-nimsl-v0_3_2.repo = "nimsl";
  inputs.src-nimsl-v0_3_2.ref = "refs/tags/v0.3.2";
  
  
  inputs."variant".url = "path:../../../v/variant";
  inputs."variant".type = "github";
  inputs."variant".owner = "riinr";
  inputs."variant".repo = "flake-nimble";
  inputs."variant".ref = "flake-pinning";
  inputs."variant".dir = "nimpkgs/v/variant";

  outputs = { self, nixpkgs, src-nimsl-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsl-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimsl-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}