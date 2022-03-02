{
  description = ''Commandant is a simple to use library for parsing command line arguments. Commandant is ideal for writing terminal applications, with  support for flags, options, subcommands, and custom exit options.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."commandant-master".type = "github";
  inputs."commandant-master".owner = "riinr";
  inputs."commandant-master".repo = "flake-nimble";
  inputs."commandant-master".ref = "flake-pinning";
  inputs."commandant-master".dir = "nimpkgs/c/commandant/master";
  inputs."commandant-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_1_0".type = "github";
  inputs."commandant-0_1_0".owner = "riinr";
  inputs."commandant-0_1_0".repo = "flake-nimble";
  inputs."commandant-0_1_0".ref = "flake-pinning";
  inputs."commandant-0_1_0".dir = "nimpkgs/c/commandant/0_1_0";
  inputs."commandant-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_1_2".type = "github";
  inputs."commandant-0_1_2".owner = "riinr";
  inputs."commandant-0_1_2".repo = "flake-nimble";
  inputs."commandant-0_1_2".ref = "flake-pinning";
  inputs."commandant-0_1_2".dir = "nimpkgs/c/commandant/0_1_2";
  inputs."commandant-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_10_2".type = "github";
  inputs."commandant-0_10_2".owner = "riinr";
  inputs."commandant-0_10_2".repo = "flake-nimble";
  inputs."commandant-0_10_2".ref = "flake-pinning";
  inputs."commandant-0_10_2".dir = "nimpkgs/c/commandant/0_10_2";
  inputs."commandant-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_10_3".type = "github";
  inputs."commandant-0_10_3".owner = "riinr";
  inputs."commandant-0_10_3".repo = "flake-nimble";
  inputs."commandant-0_10_3".ref = "flake-pinning";
  inputs."commandant-0_10_3".dir = "nimpkgs/c/commandant/0_10_3";
  inputs."commandant-0_10_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_10_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_10_4".type = "github";
  inputs."commandant-0_10_4".owner = "riinr";
  inputs."commandant-0_10_4".repo = "flake-nimble";
  inputs."commandant-0_10_4".ref = "flake-pinning";
  inputs."commandant-0_10_4".dir = "nimpkgs/c/commandant/0_10_4";
  inputs."commandant-0_10_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_10_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_10_5".type = "github";
  inputs."commandant-0_10_5".owner = "riinr";
  inputs."commandant-0_10_5".repo = "flake-nimble";
  inputs."commandant-0_10_5".ref = "flake-pinning";
  inputs."commandant-0_10_5".dir = "nimpkgs/c/commandant/0_10_5";
  inputs."commandant-0_10_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_10_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_11_0".type = "github";
  inputs."commandant-0_11_0".owner = "riinr";
  inputs."commandant-0_11_0".repo = "flake-nimble";
  inputs."commandant-0_11_0".ref = "flake-pinning";
  inputs."commandant-0_11_0".dir = "nimpkgs/c/commandant/0_11_0";
  inputs."commandant-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_12_0".type = "github";
  inputs."commandant-0_12_0".owner = "riinr";
  inputs."commandant-0_12_0".repo = "flake-nimble";
  inputs."commandant-0_12_0".ref = "flake-pinning";
  inputs."commandant-0_12_0".dir = "nimpkgs/c/commandant/0_12_0";
  inputs."commandant-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_12_1".type = "github";
  inputs."commandant-0_12_1".owner = "riinr";
  inputs."commandant-0_12_1".repo = "flake-nimble";
  inputs."commandant-0_12_1".ref = "flake-pinning";
  inputs."commandant-0_12_1".dir = "nimpkgs/c/commandant/0_12_1";
  inputs."commandant-0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_12_3".type = "github";
  inputs."commandant-0_12_3".owner = "riinr";
  inputs."commandant-0_12_3".repo = "flake-nimble";
  inputs."commandant-0_12_3".ref = "flake-pinning";
  inputs."commandant-0_12_3".dir = "nimpkgs/c/commandant/0_12_3";
  inputs."commandant-0_12_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_12_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_13_0".type = "github";
  inputs."commandant-0_13_0".owner = "riinr";
  inputs."commandant-0_13_0".repo = "flake-nimble";
  inputs."commandant-0_13_0".ref = "flake-pinning";
  inputs."commandant-0_13_0".dir = "nimpkgs/c/commandant/0_13_0";
  inputs."commandant-0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_14_0".type = "github";
  inputs."commandant-0_14_0".owner = "riinr";
  inputs."commandant-0_14_0".repo = "flake-nimble";
  inputs."commandant-0_14_0".ref = "flake-pinning";
  inputs."commandant-0_14_0".dir = "nimpkgs/c/commandant/0_14_0";
  inputs."commandant-0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_15_0".type = "github";
  inputs."commandant-0_15_0".owner = "riinr";
  inputs."commandant-0_15_0".repo = "flake-nimble";
  inputs."commandant-0_15_0".ref = "flake-pinning";
  inputs."commandant-0_15_0".dir = "nimpkgs/c/commandant/0_15_0";
  inputs."commandant-0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_2_0".type = "github";
  inputs."commandant-0_2_0".owner = "riinr";
  inputs."commandant-0_2_0".repo = "flake-nimble";
  inputs."commandant-0_2_0".ref = "flake-pinning";
  inputs."commandant-0_2_0".dir = "nimpkgs/c/commandant/0_2_0";
  inputs."commandant-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_3_0".type = "github";
  inputs."commandant-0_3_0".owner = "riinr";
  inputs."commandant-0_3_0".repo = "flake-nimble";
  inputs."commandant-0_3_0".ref = "flake-pinning";
  inputs."commandant-0_3_0".dir = "nimpkgs/c/commandant/0_3_0";
  inputs."commandant-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_3_1".type = "github";
  inputs."commandant-0_3_1".owner = "riinr";
  inputs."commandant-0_3_1".repo = "flake-nimble";
  inputs."commandant-0_3_1".ref = "flake-pinning";
  inputs."commandant-0_3_1".dir = "nimpkgs/c/commandant/0_3_1";
  inputs."commandant-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_4_0".type = "github";
  inputs."commandant-0_4_0".owner = "riinr";
  inputs."commandant-0_4_0".repo = "flake-nimble";
  inputs."commandant-0_4_0".ref = "flake-pinning";
  inputs."commandant-0_4_0".dir = "nimpkgs/c/commandant/0_4_0";
  inputs."commandant-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_5_0".type = "github";
  inputs."commandant-0_5_0".owner = "riinr";
  inputs."commandant-0_5_0".repo = "flake-nimble";
  inputs."commandant-0_5_0".ref = "flake-pinning";
  inputs."commandant-0_5_0".dir = "nimpkgs/c/commandant/0_5_0";
  inputs."commandant-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_6_0".type = "github";
  inputs."commandant-0_6_0".owner = "riinr";
  inputs."commandant-0_6_0".repo = "flake-nimble";
  inputs."commandant-0_6_0".ref = "flake-pinning";
  inputs."commandant-0_6_0".dir = "nimpkgs/c/commandant/0_6_0";
  inputs."commandant-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_7_0".type = "github";
  inputs."commandant-0_7_0".owner = "riinr";
  inputs."commandant-0_7_0".repo = "flake-nimble";
  inputs."commandant-0_7_0".ref = "flake-pinning";
  inputs."commandant-0_7_0".dir = "nimpkgs/c/commandant/0_7_0";
  inputs."commandant-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_8_0".type = "github";
  inputs."commandant-0_8_0".owner = "riinr";
  inputs."commandant-0_8_0".repo = "flake-nimble";
  inputs."commandant-0_8_0".ref = "flake-pinning";
  inputs."commandant-0_8_0".dir = "nimpkgs/c/commandant/0_8_0";
  inputs."commandant-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_9_0".type = "github";
  inputs."commandant-0_9_0".owner = "riinr";
  inputs."commandant-0_9_0".repo = "flake-nimble";
  inputs."commandant-0_9_0".ref = "flake-pinning";
  inputs."commandant-0_9_0".dir = "nimpkgs/c/commandant/0_9_0";
  inputs."commandant-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."commandant-0_9_1".type = "github";
  inputs."commandant-0_9_1".owner = "riinr";
  inputs."commandant-0_9_1".repo = "flake-nimble";
  inputs."commandant-0_9_1".ref = "flake-pinning";
  inputs."commandant-0_9_1".dir = "nimpkgs/c/commandant/0_9_1";
  inputs."commandant-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}