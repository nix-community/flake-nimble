{
  description = ''faker is a Nim package that generates fake data for you.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."faker-develop".type = "github";
  inputs."faker-develop".owner = "riinr";
  inputs."faker-develop".repo = "flake-nimble";
  inputs."faker-develop".ref = "flake-pinning";
  inputs."faker-develop".dir = "nimpkgs/f/faker/develop";
  inputs."faker-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-master".type = "github";
  inputs."faker-master".owner = "riinr";
  inputs."faker-master".repo = "flake-nimble";
  inputs."faker-master".ref = "flake-pinning";
  inputs."faker-master".dir = "nimpkgs/f/faker/master";
  inputs."faker-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_10_0".type = "github";
  inputs."faker-v0_10_0".owner = "riinr";
  inputs."faker-v0_10_0".repo = "flake-nimble";
  inputs."faker-v0_10_0".ref = "flake-pinning";
  inputs."faker-v0_10_0".dir = "nimpkgs/f/faker/v0_10_0";
  inputs."faker-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_11_0".type = "github";
  inputs."faker-v0_11_0".owner = "riinr";
  inputs."faker-v0_11_0".repo = "flake-nimble";
  inputs."faker-v0_11_0".ref = "flake-pinning";
  inputs."faker-v0_11_0".dir = "nimpkgs/f/faker/v0_11_0";
  inputs."faker-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_11_1".type = "github";
  inputs."faker-v0_11_1".owner = "riinr";
  inputs."faker-v0_11_1".repo = "flake-nimble";
  inputs."faker-v0_11_1".ref = "flake-pinning";
  inputs."faker-v0_11_1".dir = "nimpkgs/f/faker/v0_11_1";
  inputs."faker-v0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_11_2".type = "github";
  inputs."faker-v0_11_2".owner = "riinr";
  inputs."faker-v0_11_2".repo = "flake-nimble";
  inputs."faker-v0_11_2".ref = "flake-pinning";
  inputs."faker-v0_11_2".dir = "nimpkgs/f/faker/v0_11_2";
  inputs."faker-v0_11_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_11_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_12_0".type = "github";
  inputs."faker-v0_12_0".owner = "riinr";
  inputs."faker-v0_12_0".repo = "flake-nimble";
  inputs."faker-v0_12_0".ref = "flake-pinning";
  inputs."faker-v0_12_0".dir = "nimpkgs/f/faker/v0_12_0";
  inputs."faker-v0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_12_1".type = "github";
  inputs."faker-v0_12_1".owner = "riinr";
  inputs."faker-v0_12_1".repo = "flake-nimble";
  inputs."faker-v0_12_1".ref = "flake-pinning";
  inputs."faker-v0_12_1".dir = "nimpkgs/f/faker/v0_12_1";
  inputs."faker-v0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_13_0".type = "github";
  inputs."faker-v0_13_0".owner = "riinr";
  inputs."faker-v0_13_0".repo = "flake-nimble";
  inputs."faker-v0_13_0".ref = "flake-pinning";
  inputs."faker-v0_13_0".dir = "nimpkgs/f/faker/v0_13_0";
  inputs."faker-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_13_1".type = "github";
  inputs."faker-v0_13_1".owner = "riinr";
  inputs."faker-v0_13_1".repo = "flake-nimble";
  inputs."faker-v0_13_1".ref = "flake-pinning";
  inputs."faker-v0_13_1".dir = "nimpkgs/f/faker/v0_13_1";
  inputs."faker-v0_13_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_13_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_13_2".type = "github";
  inputs."faker-v0_13_2".owner = "riinr";
  inputs."faker-v0_13_2".repo = "flake-nimble";
  inputs."faker-v0_13_2".ref = "flake-pinning";
  inputs."faker-v0_13_2".dir = "nimpkgs/f/faker/v0_13_2";
  inputs."faker-v0_13_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_13_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_14_0".type = "github";
  inputs."faker-v0_14_0".owner = "riinr";
  inputs."faker-v0_14_0".repo = "flake-nimble";
  inputs."faker-v0_14_0".ref = "flake-pinning";
  inputs."faker-v0_14_0".dir = "nimpkgs/f/faker/v0_14_0";
  inputs."faker-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_15_0".type = "github";
  inputs."faker-v0_15_0".owner = "riinr";
  inputs."faker-v0_15_0".repo = "flake-nimble";
  inputs."faker-v0_15_0".ref = "flake-pinning";
  inputs."faker-v0_15_0".dir = "nimpkgs/f/faker/v0_15_0";
  inputs."faker-v0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_15_1".type = "github";
  inputs."faker-v0_15_1".owner = "riinr";
  inputs."faker-v0_15_1".repo = "flake-nimble";
  inputs."faker-v0_15_1".ref = "flake-pinning";
  inputs."faker-v0_15_1".dir = "nimpkgs/f/faker/v0_15_1";
  inputs."faker-v0_15_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_15_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_15_2".type = "github";
  inputs."faker-v0_15_2".owner = "riinr";
  inputs."faker-v0_15_2".repo = "flake-nimble";
  inputs."faker-v0_15_2".ref = "flake-pinning";
  inputs."faker-v0_15_2".dir = "nimpkgs/f/faker/v0_15_2";
  inputs."faker-v0_15_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_15_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_2_1".type = "github";
  inputs."faker-v0_2_1".owner = "riinr";
  inputs."faker-v0_2_1".repo = "flake-nimble";
  inputs."faker-v0_2_1".ref = "flake-pinning";
  inputs."faker-v0_2_1".dir = "nimpkgs/f/faker/v0_2_1";
  inputs."faker-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_3_0".type = "github";
  inputs."faker-v0_3_0".owner = "riinr";
  inputs."faker-v0_3_0".repo = "flake-nimble";
  inputs."faker-v0_3_0".ref = "flake-pinning";
  inputs."faker-v0_3_0".dir = "nimpkgs/f/faker/v0_3_0";
  inputs."faker-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_3_1".type = "github";
  inputs."faker-v0_3_1".owner = "riinr";
  inputs."faker-v0_3_1".repo = "flake-nimble";
  inputs."faker-v0_3_1".ref = "flake-pinning";
  inputs."faker-v0_3_1".dir = "nimpkgs/f/faker/v0_3_1";
  inputs."faker-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_4_0".type = "github";
  inputs."faker-v0_4_0".owner = "riinr";
  inputs."faker-v0_4_0".repo = "flake-nimble";
  inputs."faker-v0_4_0".ref = "flake-pinning";
  inputs."faker-v0_4_0".dir = "nimpkgs/f/faker/v0_4_0";
  inputs."faker-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_5_0".type = "github";
  inputs."faker-v0_5_0".owner = "riinr";
  inputs."faker-v0_5_0".repo = "flake-nimble";
  inputs."faker-v0_5_0".ref = "flake-pinning";
  inputs."faker-v0_5_0".dir = "nimpkgs/f/faker/v0_5_0";
  inputs."faker-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_5_1".type = "github";
  inputs."faker-v0_5_1".owner = "riinr";
  inputs."faker-v0_5_1".repo = "flake-nimble";
  inputs."faker-v0_5_1".ref = "flake-pinning";
  inputs."faker-v0_5_1".dir = "nimpkgs/f/faker/v0_5_1";
  inputs."faker-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_5_2".type = "github";
  inputs."faker-v0_5_2".owner = "riinr";
  inputs."faker-v0_5_2".repo = "flake-nimble";
  inputs."faker-v0_5_2".ref = "flake-pinning";
  inputs."faker-v0_5_2".dir = "nimpkgs/f/faker/v0_5_2";
  inputs."faker-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_6_0".type = "github";
  inputs."faker-v0_6_0".owner = "riinr";
  inputs."faker-v0_6_0".repo = "flake-nimble";
  inputs."faker-v0_6_0".ref = "flake-pinning";
  inputs."faker-v0_6_0".dir = "nimpkgs/f/faker/v0_6_0";
  inputs."faker-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_7_0".type = "github";
  inputs."faker-v0_7_0".owner = "riinr";
  inputs."faker-v0_7_0".repo = "flake-nimble";
  inputs."faker-v0_7_0".ref = "flake-pinning";
  inputs."faker-v0_7_0".dir = "nimpkgs/f/faker/v0_7_0";
  inputs."faker-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_7_1".type = "github";
  inputs."faker-v0_7_1".owner = "riinr";
  inputs."faker-v0_7_1".repo = "flake-nimble";
  inputs."faker-v0_7_1".ref = "flake-pinning";
  inputs."faker-v0_7_1".dir = "nimpkgs/f/faker/v0_7_1";
  inputs."faker-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_7_2".type = "github";
  inputs."faker-v0_7_2".owner = "riinr";
  inputs."faker-v0_7_2".repo = "flake-nimble";
  inputs."faker-v0_7_2".ref = "flake-pinning";
  inputs."faker-v0_7_2".dir = "nimpkgs/f/faker/v0_7_2";
  inputs."faker-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_8_0".type = "github";
  inputs."faker-v0_8_0".owner = "riinr";
  inputs."faker-v0_8_0".repo = "flake-nimble";
  inputs."faker-v0_8_0".ref = "flake-pinning";
  inputs."faker-v0_8_0".dir = "nimpkgs/f/faker/v0_8_0";
  inputs."faker-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."faker-v0_9_0".type = "github";
  inputs."faker-v0_9_0".owner = "riinr";
  inputs."faker-v0_9_0".repo = "flake-nimble";
  inputs."faker-v0_9_0".ref = "flake-pinning";
  inputs."faker-v0_9_0".dir = "nimpkgs/f/faker/v0_9_0";
  inputs."faker-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}