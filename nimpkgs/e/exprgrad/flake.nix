{
  description = ''An experimental deep learning framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."exprgrad-main".type = "github";
  inputs."exprgrad-main".owner = "riinr";
  inputs."exprgrad-main".repo = "flake-nimble";
  inputs."exprgrad-main".ref = "flake-pinning";
  inputs."exprgrad-main".dir = "nimpkgs/e/exprgrad/main";
  inputs."exprgrad-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."exprgrad-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."exprgrad-v0_0_1".type = "github";
  inputs."exprgrad-v0_0_1".owner = "riinr";
  inputs."exprgrad-v0_0_1".repo = "flake-nimble";
  inputs."exprgrad-v0_0_1".ref = "flake-pinning";
  inputs."exprgrad-v0_0_1".dir = "nimpkgs/e/exprgrad/v0_0_1";
  inputs."exprgrad-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."exprgrad-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}