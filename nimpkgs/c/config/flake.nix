{
  description = ''A library for working with the CFG configuration format'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."config-main".type = "github";
  inputs."config-main".owner = "riinr";
  inputs."config-main".repo = "flake-nimble";
  inputs."config-main".ref = "flake-pinning";
  inputs."config-main".dir = "nimpkgs/c/config/main";
  inputs."config-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."config-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."config-0_1_0".type = "github";
  inputs."config-0_1_0".owner = "riinr";
  inputs."config-0_1_0".repo = "flake-nimble";
  inputs."config-0_1_0".ref = "flake-pinning";
  inputs."config-0_1_0".dir = "nimpkgs/c/config/0_1_0";
  inputs."config-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."config-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."config-0_1_1".type = "github";
  inputs."config-0_1_1".owner = "riinr";
  inputs."config-0_1_1".repo = "flake-nimble";
  inputs."config-0_1_1".ref = "flake-pinning";
  inputs."config-0_1_1".dir = "nimpkgs/c/config/0_1_1";
  inputs."config-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."config-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}