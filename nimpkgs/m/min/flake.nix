{
  description = ''A small but practical concatenative programming language and shell.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."min-master".type = "github";
  inputs."min-master".owner = "riinr";
  inputs."min-master".repo = "flake-nimble";
  inputs."min-master".ref = "flake-pinning";
  inputs."min-master".dir = "nimpkgs/m/min/master";
  inputs."min-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-0_19_6".type = "github";
  inputs."min-0_19_6".owner = "riinr";
  inputs."min-0_19_6".repo = "flake-nimble";
  inputs."min-0_19_6".ref = "flake-pinning";
  inputs."min-0_19_6".dir = "nimpkgs/m/min/0_19_6";
  inputs."min-0_19_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-0_19_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_1_0".type = "github";
  inputs."min-v0_1_0".owner = "riinr";
  inputs."min-v0_1_0".repo = "flake-nimble";
  inputs."min-v0_1_0".ref = "flake-pinning";
  inputs."min-v0_1_0".dir = "nimpkgs/m/min/v0_1_0";
  inputs."min-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_10_0".type = "github";
  inputs."min-v0_10_0".owner = "riinr";
  inputs."min-v0_10_0".repo = "flake-nimble";
  inputs."min-v0_10_0".ref = "flake-pinning";
  inputs."min-v0_10_0".dir = "nimpkgs/m/min/v0_10_0";
  inputs."min-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_11_0".type = "github";
  inputs."min-v0_11_0".owner = "riinr";
  inputs."min-v0_11_0".repo = "flake-nimble";
  inputs."min-v0_11_0".ref = "flake-pinning";
  inputs."min-v0_11_0".dir = "nimpkgs/m/min/v0_11_0";
  inputs."min-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_12_0".type = "github";
  inputs."min-v0_12_0".owner = "riinr";
  inputs."min-v0_12_0".repo = "flake-nimble";
  inputs."min-v0_12_0".ref = "flake-pinning";
  inputs."min-v0_12_0".dir = "nimpkgs/m/min/v0_12_0";
  inputs."min-v0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_13_0".type = "github";
  inputs."min-v0_13_0".owner = "riinr";
  inputs."min-v0_13_0".repo = "flake-nimble";
  inputs."min-v0_13_0".ref = "flake-pinning";
  inputs."min-v0_13_0".dir = "nimpkgs/m/min/v0_13_0";
  inputs."min-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_14_0".type = "github";
  inputs."min-v0_14_0".owner = "riinr";
  inputs."min-v0_14_0".repo = "flake-nimble";
  inputs."min-v0_14_0".ref = "flake-pinning";
  inputs."min-v0_14_0".dir = "nimpkgs/m/min/v0_14_0";
  inputs."min-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_15_0".type = "github";
  inputs."min-v0_15_0".owner = "riinr";
  inputs."min-v0_15_0".repo = "flake-nimble";
  inputs."min-v0_15_0".ref = "flake-pinning";
  inputs."min-v0_15_0".dir = "nimpkgs/m/min/v0_15_0";
  inputs."min-v0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_15_1".type = "github";
  inputs."min-v0_15_1".owner = "riinr";
  inputs."min-v0_15_1".repo = "flake-nimble";
  inputs."min-v0_15_1".ref = "flake-pinning";
  inputs."min-v0_15_1".dir = "nimpkgs/m/min/v0_15_1";
  inputs."min-v0_15_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_15_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_15_2".type = "github";
  inputs."min-v0_15_2".owner = "riinr";
  inputs."min-v0_15_2".repo = "flake-nimble";
  inputs."min-v0_15_2".ref = "flake-pinning";
  inputs."min-v0_15_2".dir = "nimpkgs/m/min/v0_15_2";
  inputs."min-v0_15_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_15_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_16_0".type = "github";
  inputs."min-v0_16_0".owner = "riinr";
  inputs."min-v0_16_0".repo = "flake-nimble";
  inputs."min-v0_16_0".ref = "flake-pinning";
  inputs."min-v0_16_0".dir = "nimpkgs/m/min/v0_16_0";
  inputs."min-v0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_17_0".type = "github";
  inputs."min-v0_17_0".owner = "riinr";
  inputs."min-v0_17_0".repo = "flake-nimble";
  inputs."min-v0_17_0".ref = "flake-pinning";
  inputs."min-v0_17_0".dir = "nimpkgs/m/min/v0_17_0";
  inputs."min-v0_17_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_17_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_18_0".type = "github";
  inputs."min-v0_18_0".owner = "riinr";
  inputs."min-v0_18_0".repo = "flake-nimble";
  inputs."min-v0_18_0".ref = "flake-pinning";
  inputs."min-v0_18_0".dir = "nimpkgs/m/min/v0_18_0";
  inputs."min-v0_18_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_18_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_19_0".type = "github";
  inputs."min-v0_19_0".owner = "riinr";
  inputs."min-v0_19_0".repo = "flake-nimble";
  inputs."min-v0_19_0".ref = "flake-pinning";
  inputs."min-v0_19_0".dir = "nimpkgs/m/min/v0_19_0";
  inputs."min-v0_19_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_19_1".type = "github";
  inputs."min-v0_19_1".owner = "riinr";
  inputs."min-v0_19_1".repo = "flake-nimble";
  inputs."min-v0_19_1".ref = "flake-pinning";
  inputs."min-v0_19_1".dir = "nimpkgs/m/min/v0_19_1";
  inputs."min-v0_19_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_19_2".type = "github";
  inputs."min-v0_19_2".owner = "riinr";
  inputs."min-v0_19_2".repo = "flake-nimble";
  inputs."min-v0_19_2".ref = "flake-pinning";
  inputs."min-v0_19_2".dir = "nimpkgs/m/min/v0_19_2";
  inputs."min-v0_19_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_19_3".type = "github";
  inputs."min-v0_19_3".owner = "riinr";
  inputs."min-v0_19_3".repo = "flake-nimble";
  inputs."min-v0_19_3".ref = "flake-pinning";
  inputs."min-v0_19_3".dir = "nimpkgs/m/min/v0_19_3";
  inputs."min-v0_19_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_19_4".type = "github";
  inputs."min-v0_19_4".owner = "riinr";
  inputs."min-v0_19_4".repo = "flake-nimble";
  inputs."min-v0_19_4".ref = "flake-pinning";
  inputs."min-v0_19_4".dir = "nimpkgs/m/min/v0_19_4";
  inputs."min-v0_19_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_19_5".type = "github";
  inputs."min-v0_19_5".owner = "riinr";
  inputs."min-v0_19_5".repo = "flake-nimble";
  inputs."min-v0_19_5".ref = "flake-pinning";
  inputs."min-v0_19_5".dir = "nimpkgs/m/min/v0_19_5";
  inputs."min-v0_19_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_19_6".type = "github";
  inputs."min-v0_19_6".owner = "riinr";
  inputs."min-v0_19_6".repo = "flake-nimble";
  inputs."min-v0_19_6".ref = "flake-pinning";
  inputs."min-v0_19_6".dir = "nimpkgs/m/min/v0_19_6";
  inputs."min-v0_19_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_2_0".type = "github";
  inputs."min-v0_2_0".owner = "riinr";
  inputs."min-v0_2_0".repo = "flake-nimble";
  inputs."min-v0_2_0".ref = "flake-pinning";
  inputs."min-v0_2_0".dir = "nimpkgs/m/min/v0_2_0";
  inputs."min-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_2_1".type = "github";
  inputs."min-v0_2_1".owner = "riinr";
  inputs."min-v0_2_1".repo = "flake-nimble";
  inputs."min-v0_2_1".ref = "flake-pinning";
  inputs."min-v0_2_1".dir = "nimpkgs/m/min/v0_2_1";
  inputs."min-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_20_0".type = "github";
  inputs."min-v0_20_0".owner = "riinr";
  inputs."min-v0_20_0".repo = "flake-nimble";
  inputs."min-v0_20_0".ref = "flake-pinning";
  inputs."min-v0_20_0".dir = "nimpkgs/m/min/v0_20_0";
  inputs."min-v0_20_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_20_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_20_1".type = "github";
  inputs."min-v0_20_1".owner = "riinr";
  inputs."min-v0_20_1".repo = "flake-nimble";
  inputs."min-v0_20_1".ref = "flake-pinning";
  inputs."min-v0_20_1".dir = "nimpkgs/m/min/v0_20_1";
  inputs."min-v0_20_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_20_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_21_0".type = "github";
  inputs."min-v0_21_0".owner = "riinr";
  inputs."min-v0_21_0".repo = "flake-nimble";
  inputs."min-v0_21_0".ref = "flake-pinning";
  inputs."min-v0_21_0".dir = "nimpkgs/m/min/v0_21_0";
  inputs."min-v0_21_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_21_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_21_1".type = "github";
  inputs."min-v0_21_1".owner = "riinr";
  inputs."min-v0_21_1".repo = "flake-nimble";
  inputs."min-v0_21_1".ref = "flake-pinning";
  inputs."min-v0_21_1".dir = "nimpkgs/m/min/v0_21_1";
  inputs."min-v0_21_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_21_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_22_0".type = "github";
  inputs."min-v0_22_0".owner = "riinr";
  inputs."min-v0_22_0".repo = "flake-nimble";
  inputs."min-v0_22_0".ref = "flake-pinning";
  inputs."min-v0_22_0".dir = "nimpkgs/m/min/v0_22_0";
  inputs."min-v0_22_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_22_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_23_0".type = "github";
  inputs."min-v0_23_0".owner = "riinr";
  inputs."min-v0_23_0".repo = "flake-nimble";
  inputs."min-v0_23_0".ref = "flake-pinning";
  inputs."min-v0_23_0".dir = "nimpkgs/m/min/v0_23_0";
  inputs."min-v0_23_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_23_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_24_0".type = "github";
  inputs."min-v0_24_0".owner = "riinr";
  inputs."min-v0_24_0".repo = "flake-nimble";
  inputs."min-v0_24_0".ref = "flake-pinning";
  inputs."min-v0_24_0".dir = "nimpkgs/m/min/v0_24_0";
  inputs."min-v0_24_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_24_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_25_0".type = "github";
  inputs."min-v0_25_0".owner = "riinr";
  inputs."min-v0_25_0".repo = "flake-nimble";
  inputs."min-v0_25_0".ref = "flake-pinning";
  inputs."min-v0_25_0".dir = "nimpkgs/m/min/v0_25_0";
  inputs."min-v0_25_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_25_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_26_0".type = "github";
  inputs."min-v0_26_0".owner = "riinr";
  inputs."min-v0_26_0".repo = "flake-nimble";
  inputs."min-v0_26_0".ref = "flake-pinning";
  inputs."min-v0_26_0".dir = "nimpkgs/m/min/v0_26_0";
  inputs."min-v0_26_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_26_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_27_0".type = "github";
  inputs."min-v0_27_0".owner = "riinr";
  inputs."min-v0_27_0".repo = "flake-nimble";
  inputs."min-v0_27_0".ref = "flake-pinning";
  inputs."min-v0_27_0".dir = "nimpkgs/m/min/v0_27_0";
  inputs."min-v0_27_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_27_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_27_1".type = "github";
  inputs."min-v0_27_1".owner = "riinr";
  inputs."min-v0_27_1".repo = "flake-nimble";
  inputs."min-v0_27_1".ref = "flake-pinning";
  inputs."min-v0_27_1".dir = "nimpkgs/m/min/v0_27_1";
  inputs."min-v0_27_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_27_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_28_0".type = "github";
  inputs."min-v0_28_0".owner = "riinr";
  inputs."min-v0_28_0".repo = "flake-nimble";
  inputs."min-v0_28_0".ref = "flake-pinning";
  inputs."min-v0_28_0".dir = "nimpkgs/m/min/v0_28_0";
  inputs."min-v0_28_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_28_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_28_1".type = "github";
  inputs."min-v0_28_1".owner = "riinr";
  inputs."min-v0_28_1".repo = "flake-nimble";
  inputs."min-v0_28_1".ref = "flake-pinning";
  inputs."min-v0_28_1".dir = "nimpkgs/m/min/v0_28_1";
  inputs."min-v0_28_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_28_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_29_0".type = "github";
  inputs."min-v0_29_0".owner = "riinr";
  inputs."min-v0_29_0".repo = "flake-nimble";
  inputs."min-v0_29_0".ref = "flake-pinning";
  inputs."min-v0_29_0".dir = "nimpkgs/m/min/v0_29_0";
  inputs."min-v0_29_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_29_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_29_1".type = "github";
  inputs."min-v0_29_1".owner = "riinr";
  inputs."min-v0_29_1".repo = "flake-nimble";
  inputs."min-v0_29_1".ref = "flake-pinning";
  inputs."min-v0_29_1".dir = "nimpkgs/m/min/v0_29_1";
  inputs."min-v0_29_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_29_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_3_0".type = "github";
  inputs."min-v0_3_0".owner = "riinr";
  inputs."min-v0_3_0".repo = "flake-nimble";
  inputs."min-v0_3_0".ref = "flake-pinning";
  inputs."min-v0_3_0".dir = "nimpkgs/m/min/v0_3_0";
  inputs."min-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_30_0".type = "github";
  inputs."min-v0_30_0".owner = "riinr";
  inputs."min-v0_30_0".repo = "flake-nimble";
  inputs."min-v0_30_0".ref = "flake-pinning";
  inputs."min-v0_30_0".dir = "nimpkgs/m/min/v0_30_0";
  inputs."min-v0_30_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_30_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_31_0".type = "github";
  inputs."min-v0_31_0".owner = "riinr";
  inputs."min-v0_31_0".repo = "flake-nimble";
  inputs."min-v0_31_0".ref = "flake-pinning";
  inputs."min-v0_31_0".dir = "nimpkgs/m/min/v0_31_0";
  inputs."min-v0_31_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_31_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_32_0".type = "github";
  inputs."min-v0_32_0".owner = "riinr";
  inputs."min-v0_32_0".repo = "flake-nimble";
  inputs."min-v0_32_0".ref = "flake-pinning";
  inputs."min-v0_32_0".dir = "nimpkgs/m/min/v0_32_0";
  inputs."min-v0_32_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_32_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_33_0".type = "github";
  inputs."min-v0_33_0".owner = "riinr";
  inputs."min-v0_33_0".repo = "flake-nimble";
  inputs."min-v0_33_0".ref = "flake-pinning";
  inputs."min-v0_33_0".dir = "nimpkgs/m/min/v0_33_0";
  inputs."min-v0_33_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_33_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_34_0".type = "github";
  inputs."min-v0_34_0".owner = "riinr";
  inputs."min-v0_34_0".repo = "flake-nimble";
  inputs."min-v0_34_0".ref = "flake-pinning";
  inputs."min-v0_34_0".dir = "nimpkgs/m/min/v0_34_0";
  inputs."min-v0_34_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_34_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_34_1".type = "github";
  inputs."min-v0_34_1".owner = "riinr";
  inputs."min-v0_34_1".repo = "flake-nimble";
  inputs."min-v0_34_1".ref = "flake-pinning";
  inputs."min-v0_34_1".dir = "nimpkgs/m/min/v0_34_1";
  inputs."min-v0_34_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_34_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_35_0".type = "github";
  inputs."min-v0_35_0".owner = "riinr";
  inputs."min-v0_35_0".repo = "flake-nimble";
  inputs."min-v0_35_0".ref = "flake-pinning";
  inputs."min-v0_35_0".dir = "nimpkgs/m/min/v0_35_0";
  inputs."min-v0_35_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_35_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_35_1".type = "github";
  inputs."min-v0_35_1".owner = "riinr";
  inputs."min-v0_35_1".repo = "flake-nimble";
  inputs."min-v0_35_1".ref = "flake-pinning";
  inputs."min-v0_35_1".dir = "nimpkgs/m/min/v0_35_1";
  inputs."min-v0_35_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_35_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_36_0".type = "github";
  inputs."min-v0_36_0".owner = "riinr";
  inputs."min-v0_36_0".repo = "flake-nimble";
  inputs."min-v0_36_0".ref = "flake-pinning";
  inputs."min-v0_36_0".dir = "nimpkgs/m/min/v0_36_0";
  inputs."min-v0_36_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_36_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_37_0".type = "github";
  inputs."min-v0_37_0".owner = "riinr";
  inputs."min-v0_37_0".repo = "flake-nimble";
  inputs."min-v0_37_0".ref = "flake-pinning";
  inputs."min-v0_37_0".dir = "nimpkgs/m/min/v0_37_0";
  inputs."min-v0_37_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_37_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_4_0".type = "github";
  inputs."min-v0_4_0".owner = "riinr";
  inputs."min-v0_4_0".repo = "flake-nimble";
  inputs."min-v0_4_0".ref = "flake-pinning";
  inputs."min-v0_4_0".dir = "nimpkgs/m/min/v0_4_0";
  inputs."min-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_5_0".type = "github";
  inputs."min-v0_5_0".owner = "riinr";
  inputs."min-v0_5_0".repo = "flake-nimble";
  inputs."min-v0_5_0".ref = "flake-pinning";
  inputs."min-v0_5_0".dir = "nimpkgs/m/min/v0_5_0";
  inputs."min-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_6_0".type = "github";
  inputs."min-v0_6_0".owner = "riinr";
  inputs."min-v0_6_0".repo = "flake-nimble";
  inputs."min-v0_6_0".ref = "flake-pinning";
  inputs."min-v0_6_0".dir = "nimpkgs/m/min/v0_6_0";
  inputs."min-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_7_0".type = "github";
  inputs."min-v0_7_0".owner = "riinr";
  inputs."min-v0_7_0".repo = "flake-nimble";
  inputs."min-v0_7_0".ref = "flake-pinning";
  inputs."min-v0_7_0".dir = "nimpkgs/m/min/v0_7_0";
  inputs."min-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_8_0".type = "github";
  inputs."min-v0_8_0".owner = "riinr";
  inputs."min-v0_8_0".repo = "flake-nimble";
  inputs."min-v0_8_0".ref = "flake-pinning";
  inputs."min-v0_8_0".dir = "nimpkgs/m/min/v0_8_0";
  inputs."min-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_8_1".type = "github";
  inputs."min-v0_8_1".owner = "riinr";
  inputs."min-v0_8_1".repo = "flake-nimble";
  inputs."min-v0_8_1".ref = "flake-pinning";
  inputs."min-v0_8_1".dir = "nimpkgs/m/min/v0_8_1";
  inputs."min-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."min-v0_9_0".type = "github";
  inputs."min-v0_9_0".owner = "riinr";
  inputs."min-v0_9_0".repo = "flake-nimble";
  inputs."min-v0_9_0".ref = "flake-pinning";
  inputs."min-v0_9_0".dir = "nimpkgs/m/min/v0_9_0";
  inputs."min-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}