{
  description = ''Distributions is a Nim library for distributions and their functions.'';
  inputs.src-distributions-v0_1_1.flake = false;
  inputs.src-distributions-v0_1_1.type = "github";
  inputs.src-distributions-v0_1_1.owner = "ayman-albaz";
  inputs.src-distributions-v0_1_1.repo = "distributions";
  inputs.src-distributions-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."special_functions".type = "github";
  inputs."special_functions".owner = "riinr";
  inputs."special_functions".repo = "flake-nimble";
  inputs."special_functions".ref = "flake-pinning";
  inputs."special_functions".dir = "nimpkgs/s/special_functions";

  outputs = { self, nixpkgs, src-distributions-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-distributions-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-distributions-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}