{
  description = ''Encoding for Robust Immutable Storage (ERIS)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
    inputs."eris-0_2_0".type = "github";
  inputs."eris-0_2_0".owner = "riinr";
  inputs."eris-0_2_0".repo = "flake-nimble";
  inputs."eris-0_2_0".ref = "flake-pinning";
  inputs."eris-0_2_0".dir = "nimpkgs/e/eris/0_2_0";
  inputs."eris-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris-0_2_1".type = "github";
  inputs."eris-0_2_1".owner = "riinr";
  inputs."eris-0_2_1".repo = "flake-nimble";
  inputs."eris-0_2_1".ref = "flake-pinning";
  inputs."eris-0_2_1".dir = "nimpkgs/e/eris/0_2_1";
  inputs."eris-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris-0_3_0".type = "github";
  inputs."eris-0_3_0".owner = "riinr";
  inputs."eris-0_3_0".repo = "flake-nimble";
  inputs."eris-0_3_0".ref = "flake-pinning";
  inputs."eris-0_3_0".dir = "nimpkgs/e/eris/0_3_0";
  inputs."eris-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris-0_3_1".type = "github";
  inputs."eris-0_3_1".owner = "riinr";
  inputs."eris-0_3_1".repo = "flake-nimble";
  inputs."eris-0_3_1".ref = "flake-pinning";
  inputs."eris-0_3_1".dir = "nimpkgs/e/eris/0_3_1";
  inputs."eris-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris-0_4_0".type = "github";
  inputs."eris-0_4_0".owner = "riinr";
  inputs."eris-0_4_0".repo = "flake-nimble";
  inputs."eris-0_4_0".ref = "flake-pinning";
  inputs."eris-0_4_0".dir = "nimpkgs/e/eris/0_4_0";
  inputs."eris-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris-0_5_0".type = "github";
  inputs."eris-0_5_0".owner = "riinr";
  inputs."eris-0_5_0".repo = "flake-nimble";
  inputs."eris-0_5_0".ref = "flake-pinning";
  inputs."eris-0_5_0".dir = "nimpkgs/e/eris/0_5_0";
  inputs."eris-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris-0_6_0".type = "github";
  inputs."eris-0_6_0".owner = "riinr";
  inputs."eris-0_6_0".repo = "flake-nimble";
  inputs."eris-0_6_0".ref = "flake-pinning";
  inputs."eris-0_6_0".dir = "nimpkgs/e/eris/0_6_0";
  inputs."eris-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris-0_7_0".type = "github";
  inputs."eris-0_7_0".owner = "riinr";
  inputs."eris-0_7_0".repo = "flake-nimble";
  inputs."eris-0_7_0".ref = "flake-pinning";
  inputs."eris-0_7_0".dir = "nimpkgs/e/eris/0_7_0";
  inputs."eris-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eris-0_7_1".type = "github";
  inputs."eris-0_7_1".owner = "riinr";
  inputs."eris-0_7_1".repo = "flake-nimble";
  inputs."eris-0_7_1".ref = "flake-pinning";
  inputs."eris-0_7_1".dir = "nimpkgs/e/eris/0_7_1";
  inputs."eris-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}