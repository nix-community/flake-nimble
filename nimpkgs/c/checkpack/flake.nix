{
  description = ''Tiny library to check if a system package is already installed.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."checkpack-develop".type = "github";
  inputs."checkpack-develop".owner = "riinr";
  inputs."checkpack-develop".repo = "flake-nimble";
  inputs."checkpack-develop".ref = "flake-pinning";
  inputs."checkpack-develop".dir = "nimpkgs/c/checkpack/develop";
  inputs."checkpack-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."checkpack-master".type = "github";
  inputs."checkpack-master".owner = "riinr";
  inputs."checkpack-master".repo = "flake-nimble";
  inputs."checkpack-master".ref = "flake-pinning";
  inputs."checkpack-master".dir = "nimpkgs/c/checkpack/master";
  inputs."checkpack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."checkpack-0_1_0".type = "github";
  inputs."checkpack-0_1_0".owner = "riinr";
  inputs."checkpack-0_1_0".repo = "flake-nimble";
  inputs."checkpack-0_1_0".ref = "flake-pinning";
  inputs."checkpack-0_1_0".dir = "nimpkgs/c/checkpack/0_1_0";
  inputs."checkpack-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."checkpack-0_1_1".type = "github";
  inputs."checkpack-0_1_1".owner = "riinr";
  inputs."checkpack-0_1_1".repo = "flake-nimble";
  inputs."checkpack-0_1_1".ref = "flake-pinning";
  inputs."checkpack-0_1_1".dir = "nimpkgs/c/checkpack/0_1_1";
  inputs."checkpack-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."checkpack-0_2_0".type = "github";
  inputs."checkpack-0_2_0".owner = "riinr";
  inputs."checkpack-0_2_0".repo = "flake-nimble";
  inputs."checkpack-0_2_0".ref = "flake-pinning";
  inputs."checkpack-0_2_0".dir = "nimpkgs/c/checkpack/0_2_0";
  inputs."checkpack-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."checkpack-0_3_0".type = "github";
  inputs."checkpack-0_3_0".owner = "riinr";
  inputs."checkpack-0_3_0".repo = "flake-nimble";
  inputs."checkpack-0_3_0".ref = "flake-pinning";
  inputs."checkpack-0_3_0".dir = "nimpkgs/c/checkpack/0_3_0";
  inputs."checkpack-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}