{
  description = ''A build tool for Neverwinter Nights projects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nasher-master".type = "github";
  inputs."nasher-master".owner = "riinr";
  inputs."nasher-master".repo = "flake-nimble";
  inputs."nasher-master".ref = "flake-pinning";
  inputs."nasher-master".dir = "nimpkgs/n/nasher/master";
  inputs."nasher-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_1_0".type = "github";
  inputs."nasher-0_1_0".owner = "riinr";
  inputs."nasher-0_1_0".repo = "flake-nimble";
  inputs."nasher-0_1_0".ref = "flake-pinning";
  inputs."nasher-0_1_0".dir = "nimpkgs/n/nasher/0_1_0";
  inputs."nasher-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_10_0".type = "github";
  inputs."nasher-0_10_0".owner = "riinr";
  inputs."nasher-0_10_0".repo = "flake-nimble";
  inputs."nasher-0_10_0".ref = "flake-pinning";
  inputs."nasher-0_10_0".dir = "nimpkgs/n/nasher/0_10_0";
  inputs."nasher-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_10_1".type = "github";
  inputs."nasher-0_10_1".owner = "riinr";
  inputs."nasher-0_10_1".repo = "flake-nimble";
  inputs."nasher-0_10_1".ref = "flake-pinning";
  inputs."nasher-0_10_1".dir = "nimpkgs/n/nasher/0_10_1";
  inputs."nasher-0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_10_2".type = "github";
  inputs."nasher-0_10_2".owner = "riinr";
  inputs."nasher-0_10_2".repo = "flake-nimble";
  inputs."nasher-0_10_2".ref = "flake-pinning";
  inputs."nasher-0_10_2".dir = "nimpkgs/n/nasher/0_10_2";
  inputs."nasher-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_11_0".type = "github";
  inputs."nasher-0_11_0".owner = "riinr";
  inputs."nasher-0_11_0".repo = "flake-nimble";
  inputs."nasher-0_11_0".ref = "flake-pinning";
  inputs."nasher-0_11_0".dir = "nimpkgs/n/nasher/0_11_0";
  inputs."nasher-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_11_1".type = "github";
  inputs."nasher-0_11_1".owner = "riinr";
  inputs."nasher-0_11_1".repo = "flake-nimble";
  inputs."nasher-0_11_1".ref = "flake-pinning";
  inputs."nasher-0_11_1".dir = "nimpkgs/n/nasher/0_11_1";
  inputs."nasher-0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_11_2".type = "github";
  inputs."nasher-0_11_2".owner = "riinr";
  inputs."nasher-0_11_2".repo = "flake-nimble";
  inputs."nasher-0_11_2".ref = "flake-pinning";
  inputs."nasher-0_11_2".dir = "nimpkgs/n/nasher/0_11_2";
  inputs."nasher-0_11_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_11_3".type = "github";
  inputs."nasher-0_11_3".owner = "riinr";
  inputs."nasher-0_11_3".repo = "flake-nimble";
  inputs."nasher-0_11_3".ref = "flake-pinning";
  inputs."nasher-0_11_3".dir = "nimpkgs/n/nasher/0_11_3";
  inputs."nasher-0_11_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_11_4".type = "github";
  inputs."nasher-0_11_4".owner = "riinr";
  inputs."nasher-0_11_4".repo = "flake-nimble";
  inputs."nasher-0_11_4".ref = "flake-pinning";
  inputs."nasher-0_11_4".dir = "nimpkgs/n/nasher/0_11_4";
  inputs."nasher-0_11_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_11_5".type = "github";
  inputs."nasher-0_11_5".owner = "riinr";
  inputs."nasher-0_11_5".repo = "flake-nimble";
  inputs."nasher-0_11_5".ref = "flake-pinning";
  inputs."nasher-0_11_5".dir = "nimpkgs/n/nasher/0_11_5";
  inputs."nasher-0_11_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_11_6".type = "github";
  inputs."nasher-0_11_6".owner = "riinr";
  inputs."nasher-0_11_6".repo = "flake-nimble";
  inputs."nasher-0_11_6".ref = "flake-pinning";
  inputs."nasher-0_11_6".dir = "nimpkgs/n/nasher/0_11_6";
  inputs."nasher-0_11_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_11_7".type = "github";
  inputs."nasher-0_11_7".owner = "riinr";
  inputs."nasher-0_11_7".repo = "flake-nimble";
  inputs."nasher-0_11_7".ref = "flake-pinning";
  inputs."nasher-0_11_7".dir = "nimpkgs/n/nasher/0_11_7";
  inputs."nasher-0_11_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_11_8".type = "github";
  inputs."nasher-0_11_8".owner = "riinr";
  inputs."nasher-0_11_8".repo = "flake-nimble";
  inputs."nasher-0_11_8".ref = "flake-pinning";
  inputs."nasher-0_11_8".dir = "nimpkgs/n/nasher/0_11_8";
  inputs."nasher-0_11_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_11_9".type = "github";
  inputs."nasher-0_11_9".owner = "riinr";
  inputs."nasher-0_11_9".repo = "flake-nimble";
  inputs."nasher-0_11_9".ref = "flake-pinning";
  inputs."nasher-0_11_9".dir = "nimpkgs/n/nasher/0_11_9";
  inputs."nasher-0_11_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_12_0".type = "github";
  inputs."nasher-0_12_0".owner = "riinr";
  inputs."nasher-0_12_0".repo = "flake-nimble";
  inputs."nasher-0_12_0".ref = "flake-pinning";
  inputs."nasher-0_12_0".dir = "nimpkgs/n/nasher/0_12_0";
  inputs."nasher-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_12_1".type = "github";
  inputs."nasher-0_12_1".owner = "riinr";
  inputs."nasher-0_12_1".repo = "flake-nimble";
  inputs."nasher-0_12_1".ref = "flake-pinning";
  inputs."nasher-0_12_1".dir = "nimpkgs/n/nasher/0_12_1";
  inputs."nasher-0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_12_2".type = "github";
  inputs."nasher-0_12_2".owner = "riinr";
  inputs."nasher-0_12_2".repo = "flake-nimble";
  inputs."nasher-0_12_2".ref = "flake-pinning";
  inputs."nasher-0_12_2".dir = "nimpkgs/n/nasher/0_12_2";
  inputs."nasher-0_12_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_12_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_12_3".type = "github";
  inputs."nasher-0_12_3".owner = "riinr";
  inputs."nasher-0_12_3".repo = "flake-nimble";
  inputs."nasher-0_12_3".ref = "flake-pinning";
  inputs."nasher-0_12_3".dir = "nimpkgs/n/nasher/0_12_3";
  inputs."nasher-0_12_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_12_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_13_0".type = "github";
  inputs."nasher-0_13_0".owner = "riinr";
  inputs."nasher-0_13_0".repo = "flake-nimble";
  inputs."nasher-0_13_0".ref = "flake-pinning";
  inputs."nasher-0_13_0".dir = "nimpkgs/n/nasher/0_13_0";
  inputs."nasher-0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_14_0".type = "github";
  inputs."nasher-0_14_0".owner = "riinr";
  inputs."nasher-0_14_0".repo = "flake-nimble";
  inputs."nasher-0_14_0".ref = "flake-pinning";
  inputs."nasher-0_14_0".dir = "nimpkgs/n/nasher/0_14_0";
  inputs."nasher-0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_14_1".type = "github";
  inputs."nasher-0_14_1".owner = "riinr";
  inputs."nasher-0_14_1".repo = "flake-nimble";
  inputs."nasher-0_14_1".ref = "flake-pinning";
  inputs."nasher-0_14_1".dir = "nimpkgs/n/nasher/0_14_1";
  inputs."nasher-0_14_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_14_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_14_2".type = "github";
  inputs."nasher-0_14_2".owner = "riinr";
  inputs."nasher-0_14_2".repo = "flake-nimble";
  inputs."nasher-0_14_2".ref = "flake-pinning";
  inputs."nasher-0_14_2".dir = "nimpkgs/n/nasher/0_14_2";
  inputs."nasher-0_14_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_14_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_15_0".type = "github";
  inputs."nasher-0_15_0".owner = "riinr";
  inputs."nasher-0_15_0".repo = "flake-nimble";
  inputs."nasher-0_15_0".ref = "flake-pinning";
  inputs."nasher-0_15_0".dir = "nimpkgs/n/nasher/0_15_0";
  inputs."nasher-0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_15_1".type = "github";
  inputs."nasher-0_15_1".owner = "riinr";
  inputs."nasher-0_15_1".repo = "flake-nimble";
  inputs."nasher-0_15_1".ref = "flake-pinning";
  inputs."nasher-0_15_1".dir = "nimpkgs/n/nasher/0_15_1";
  inputs."nasher-0_15_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_15_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_15_2".type = "github";
  inputs."nasher-0_15_2".owner = "riinr";
  inputs."nasher-0_15_2".repo = "flake-nimble";
  inputs."nasher-0_15_2".ref = "flake-pinning";
  inputs."nasher-0_15_2".dir = "nimpkgs/n/nasher/0_15_2";
  inputs."nasher-0_15_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_15_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_15_3".type = "github";
  inputs."nasher-0_15_3".owner = "riinr";
  inputs."nasher-0_15_3".repo = "flake-nimble";
  inputs."nasher-0_15_3".ref = "flake-pinning";
  inputs."nasher-0_15_3".dir = "nimpkgs/n/nasher/0_15_3";
  inputs."nasher-0_15_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_15_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_16_0".type = "github";
  inputs."nasher-0_16_0".owner = "riinr";
  inputs."nasher-0_16_0".repo = "flake-nimble";
  inputs."nasher-0_16_0".ref = "flake-pinning";
  inputs."nasher-0_16_0".dir = "nimpkgs/n/nasher/0_16_0";
  inputs."nasher-0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_16_1".type = "github";
  inputs."nasher-0_16_1".owner = "riinr";
  inputs."nasher-0_16_1".repo = "flake-nimble";
  inputs."nasher-0_16_1".ref = "flake-pinning";
  inputs."nasher-0_16_1".dir = "nimpkgs/n/nasher/0_16_1";
  inputs."nasher-0_16_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_16_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_16_2".type = "github";
  inputs."nasher-0_16_2".owner = "riinr";
  inputs."nasher-0_16_2".repo = "flake-nimble";
  inputs."nasher-0_16_2".ref = "flake-pinning";
  inputs."nasher-0_16_2".dir = "nimpkgs/n/nasher/0_16_2";
  inputs."nasher-0_16_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_16_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_16_3".type = "github";
  inputs."nasher-0_16_3".owner = "riinr";
  inputs."nasher-0_16_3".repo = "flake-nimble";
  inputs."nasher-0_16_3".ref = "flake-pinning";
  inputs."nasher-0_16_3".dir = "nimpkgs/n/nasher/0_16_3";
  inputs."nasher-0_16_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_16_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_2_0".type = "github";
  inputs."nasher-0_2_0".owner = "riinr";
  inputs."nasher-0_2_0".repo = "flake-nimble";
  inputs."nasher-0_2_0".ref = "flake-pinning";
  inputs."nasher-0_2_0".dir = "nimpkgs/n/nasher/0_2_0";
  inputs."nasher-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_2_1".type = "github";
  inputs."nasher-0_2_1".owner = "riinr";
  inputs."nasher-0_2_1".repo = "flake-nimble";
  inputs."nasher-0_2_1".ref = "flake-pinning";
  inputs."nasher-0_2_1".dir = "nimpkgs/n/nasher/0_2_1";
  inputs."nasher-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_3_0".type = "github";
  inputs."nasher-0_3_0".owner = "riinr";
  inputs."nasher-0_3_0".repo = "flake-nimble";
  inputs."nasher-0_3_0".ref = "flake-pinning";
  inputs."nasher-0_3_0".dir = "nimpkgs/n/nasher/0_3_0";
  inputs."nasher-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_4_0".type = "github";
  inputs."nasher-0_4_0".owner = "riinr";
  inputs."nasher-0_4_0".repo = "flake-nimble";
  inputs."nasher-0_4_0".ref = "flake-pinning";
  inputs."nasher-0_4_0".dir = "nimpkgs/n/nasher/0_4_0";
  inputs."nasher-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_4_1".type = "github";
  inputs."nasher-0_4_1".owner = "riinr";
  inputs."nasher-0_4_1".repo = "flake-nimble";
  inputs."nasher-0_4_1".ref = "flake-pinning";
  inputs."nasher-0_4_1".dir = "nimpkgs/n/nasher/0_4_1";
  inputs."nasher-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_5_0".type = "github";
  inputs."nasher-0_5_0".owner = "riinr";
  inputs."nasher-0_5_0".repo = "flake-nimble";
  inputs."nasher-0_5_0".ref = "flake-pinning";
  inputs."nasher-0_5_0".dir = "nimpkgs/n/nasher/0_5_0";
  inputs."nasher-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_6_0".type = "github";
  inputs."nasher-0_6_0".owner = "riinr";
  inputs."nasher-0_6_0".repo = "flake-nimble";
  inputs."nasher-0_6_0".ref = "flake-pinning";
  inputs."nasher-0_6_0".dir = "nimpkgs/n/nasher/0_6_0";
  inputs."nasher-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_6_1".type = "github";
  inputs."nasher-0_6_1".owner = "riinr";
  inputs."nasher-0_6_1".repo = "flake-nimble";
  inputs."nasher-0_6_1".ref = "flake-pinning";
  inputs."nasher-0_6_1".dir = "nimpkgs/n/nasher/0_6_1";
  inputs."nasher-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_7_0".type = "github";
  inputs."nasher-0_7_0".owner = "riinr";
  inputs."nasher-0_7_0".repo = "flake-nimble";
  inputs."nasher-0_7_0".ref = "flake-pinning";
  inputs."nasher-0_7_0".dir = "nimpkgs/n/nasher/0_7_0";
  inputs."nasher-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_7_1".type = "github";
  inputs."nasher-0_7_1".owner = "riinr";
  inputs."nasher-0_7_1".repo = "flake-nimble";
  inputs."nasher-0_7_1".ref = "flake-pinning";
  inputs."nasher-0_7_1".dir = "nimpkgs/n/nasher/0_7_1";
  inputs."nasher-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_7_2".type = "github";
  inputs."nasher-0_7_2".owner = "riinr";
  inputs."nasher-0_7_2".repo = "flake-nimble";
  inputs."nasher-0_7_2".ref = "flake-pinning";
  inputs."nasher-0_7_2".dir = "nimpkgs/n/nasher/0_7_2";
  inputs."nasher-0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_7_3".type = "github";
  inputs."nasher-0_7_3".owner = "riinr";
  inputs."nasher-0_7_3".repo = "flake-nimble";
  inputs."nasher-0_7_3".ref = "flake-pinning";
  inputs."nasher-0_7_3".dir = "nimpkgs/n/nasher/0_7_3";
  inputs."nasher-0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_8_0".type = "github";
  inputs."nasher-0_8_0".owner = "riinr";
  inputs."nasher-0_8_0".repo = "flake-nimble";
  inputs."nasher-0_8_0".ref = "flake-pinning";
  inputs."nasher-0_8_0".dir = "nimpkgs/n/nasher/0_8_0";
  inputs."nasher-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_8_1".type = "github";
  inputs."nasher-0_8_1".owner = "riinr";
  inputs."nasher-0_8_1".repo = "flake-nimble";
  inputs."nasher-0_8_1".ref = "flake-pinning";
  inputs."nasher-0_8_1".dir = "nimpkgs/n/nasher/0_8_1";
  inputs."nasher-0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_8_2".type = "github";
  inputs."nasher-0_8_2".owner = "riinr";
  inputs."nasher-0_8_2".repo = "flake-nimble";
  inputs."nasher-0_8_2".ref = "flake-pinning";
  inputs."nasher-0_8_2".dir = "nimpkgs/n/nasher/0_8_2";
  inputs."nasher-0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_8_3".type = "github";
  inputs."nasher-0_8_3".owner = "riinr";
  inputs."nasher-0_8_3".repo = "flake-nimble";
  inputs."nasher-0_8_3".ref = "flake-pinning";
  inputs."nasher-0_8_3".dir = "nimpkgs/n/nasher/0_8_3";
  inputs."nasher-0_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_8_4".type = "github";
  inputs."nasher-0_8_4".owner = "riinr";
  inputs."nasher-0_8_4".repo = "flake-nimble";
  inputs."nasher-0_8_4".ref = "flake-pinning";
  inputs."nasher-0_8_4".dir = "nimpkgs/n/nasher/0_8_4";
  inputs."nasher-0_8_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_8_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_9_0".type = "github";
  inputs."nasher-0_9_0".owner = "riinr";
  inputs."nasher-0_9_0".repo = "flake-nimble";
  inputs."nasher-0_9_0".ref = "flake-pinning";
  inputs."nasher-0_9_0".dir = "nimpkgs/n/nasher/0_9_0";
  inputs."nasher-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_9_1".type = "github";
  inputs."nasher-0_9_1".owner = "riinr";
  inputs."nasher-0_9_1".repo = "flake-nimble";
  inputs."nasher-0_9_1".ref = "flake-pinning";
  inputs."nasher-0_9_1".dir = "nimpkgs/n/nasher/0_9_1";
  inputs."nasher-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_9_2".type = "github";
  inputs."nasher-0_9_2".owner = "riinr";
  inputs."nasher-0_9_2".repo = "flake-nimble";
  inputs."nasher-0_9_2".ref = "flake-pinning";
  inputs."nasher-0_9_2".dir = "nimpkgs/n/nasher/0_9_2";
  inputs."nasher-0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_9_3".type = "github";
  inputs."nasher-0_9_3".owner = "riinr";
  inputs."nasher-0_9_3".repo = "flake-nimble";
  inputs."nasher-0_9_3".ref = "flake-pinning";
  inputs."nasher-0_9_3".dir = "nimpkgs/n/nasher/0_9_3";
  inputs."nasher-0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_9_4".type = "github";
  inputs."nasher-0_9_4".owner = "riinr";
  inputs."nasher-0_9_4".repo = "flake-nimble";
  inputs."nasher-0_9_4".ref = "flake-pinning";
  inputs."nasher-0_9_4".dir = "nimpkgs/n/nasher/0_9_4";
  inputs."nasher-0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_9_5".type = "github";
  inputs."nasher-0_9_5".owner = "riinr";
  inputs."nasher-0_9_5".repo = "flake-nimble";
  inputs."nasher-0_9_5".ref = "flake-pinning";
  inputs."nasher-0_9_5".dir = "nimpkgs/n/nasher/0_9_5";
  inputs."nasher-0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nasher-0_9_6".type = "github";
  inputs."nasher-0_9_6".owner = "riinr";
  inputs."nasher-0_9_6".repo = "flake-nimble";
  inputs."nasher-0_9_6".ref = "flake-pinning";
  inputs."nasher-0_9_6".dir = "nimpkgs/n/nasher/0_9_6";
  inputs."nasher-0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}