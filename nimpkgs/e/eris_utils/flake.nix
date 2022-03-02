{
  description = ''Utilities for the Encoding for Robust Immutable Storage (ERIS)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
    inputs."eris_utils-0_1_0".type = "github";
  inputs."eris_utils-0_1_0".owner = "riinr";
  inputs."eris_utils-0_1_0".repo = "flake-nimble";
  inputs."eris_utils-0_1_0".ref = "flake-pinning";
  inputs."eris_utils-0_1_0".dir = "nimpkgs/e/eris_utils/0_1_0";
  inputs."eris_utils-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris_utils-0_1_1".type = "github";
  inputs."eris_utils-0_1_1".owner = "riinr";
  inputs."eris_utils-0_1_1".repo = "flake-nimble";
  inputs."eris_utils-0_1_1".ref = "flake-pinning";
  inputs."eris_utils-0_1_1".dir = "nimpkgs/e/eris_utils/0_1_1";
  inputs."eris_utils-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris_utils-0_1_2".type = "github";
  inputs."eris_utils-0_1_2".owner = "riinr";
  inputs."eris_utils-0_1_2".repo = "flake-nimble";
  inputs."eris_utils-0_1_2".ref = "flake-pinning";
  inputs."eris_utils-0_1_2".dir = "nimpkgs/e/eris_utils/0_1_2";
  inputs."eris_utils-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris_utils-0_1_3".type = "github";
  inputs."eris_utils-0_1_3".owner = "riinr";
  inputs."eris_utils-0_1_3".repo = "flake-nimble";
  inputs."eris_utils-0_1_3".ref = "flake-pinning";
  inputs."eris_utils-0_1_3".dir = "nimpkgs/e/eris_utils/0_1_3";
  inputs."eris_utils-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris_utils-0_2_0".type = "github";
  inputs."eris_utils-0_2_0".owner = "riinr";
  inputs."eris_utils-0_2_0".repo = "flake-nimble";
  inputs."eris_utils-0_2_0".ref = "flake-pinning";
  inputs."eris_utils-0_2_0".dir = "nimpkgs/e/eris_utils/0_2_0";
  inputs."eris_utils-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris_utils-0_3_0".type = "github";
  inputs."eris_utils-0_3_0".owner = "riinr";
  inputs."eris_utils-0_3_0".repo = "flake-nimble";
  inputs."eris_utils-0_3_0".ref = "flake-pinning";
  inputs."eris_utils-0_3_0".dir = "nimpkgs/e/eris_utils/0_3_0";
  inputs."eris_utils-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris_utils-0_4_0".type = "github";
  inputs."eris_utils-0_4_0".owner = "riinr";
  inputs."eris_utils-0_4_0".repo = "flake-nimble";
  inputs."eris_utils-0_4_0".ref = "flake-pinning";
  inputs."eris_utils-0_4_0".dir = "nimpkgs/e/eris_utils/0_4_0";
  inputs."eris_utils-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}