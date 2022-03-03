{
  description = ''The Nim toolchain installer.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."choosenim-master".type = "github";
  inputs."choosenim-master".owner = "riinr";
  inputs."choosenim-master".repo = "flake-nimble";
  inputs."choosenim-master".ref = "flake-pinning";
  inputs."choosenim-master".dir = "nimpkgs/c/choosenim/master";
  inputs."choosenim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_1_0".type = "github";
  inputs."choosenim-v0_1_0".owner = "riinr";
  inputs."choosenim-v0_1_0".repo = "flake-nimble";
  inputs."choosenim-v0_1_0".ref = "flake-pinning";
  inputs."choosenim-v0_1_0".dir = "nimpkgs/c/choosenim/v0_1_0";
  inputs."choosenim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_2_0".type = "github";
  inputs."choosenim-v0_2_0".owner = "riinr";
  inputs."choosenim-v0_2_0".repo = "flake-nimble";
  inputs."choosenim-v0_2_0".ref = "flake-pinning";
  inputs."choosenim-v0_2_0".dir = "nimpkgs/c/choosenim/v0_2_0";
  inputs."choosenim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_2_2".type = "github";
  inputs."choosenim-v0_2_2".owner = "riinr";
  inputs."choosenim-v0_2_2".repo = "flake-nimble";
  inputs."choosenim-v0_2_2".ref = "flake-pinning";
  inputs."choosenim-v0_2_2".dir = "nimpkgs/c/choosenim/v0_2_2";
  inputs."choosenim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_3_0".type = "github";
  inputs."choosenim-v0_3_0".owner = "riinr";
  inputs."choosenim-v0_3_0".repo = "flake-nimble";
  inputs."choosenim-v0_3_0".ref = "flake-pinning";
  inputs."choosenim-v0_3_0".dir = "nimpkgs/c/choosenim/v0_3_0";
  inputs."choosenim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_3_2".type = "github";
  inputs."choosenim-v0_3_2".owner = "riinr";
  inputs."choosenim-v0_3_2".repo = "flake-nimble";
  inputs."choosenim-v0_3_2".ref = "flake-pinning";
  inputs."choosenim-v0_3_2".dir = "nimpkgs/c/choosenim/v0_3_2";
  inputs."choosenim-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_4_0".type = "github";
  inputs."choosenim-v0_4_0".owner = "riinr";
  inputs."choosenim-v0_4_0".repo = "flake-nimble";
  inputs."choosenim-v0_4_0".ref = "flake-pinning";
  inputs."choosenim-v0_4_0".dir = "nimpkgs/c/choosenim/v0_4_0";
  inputs."choosenim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_5_0".type = "github";
  inputs."choosenim-v0_5_0".owner = "riinr";
  inputs."choosenim-v0_5_0".repo = "flake-nimble";
  inputs."choosenim-v0_5_0".ref = "flake-pinning";
  inputs."choosenim-v0_5_0".dir = "nimpkgs/c/choosenim/v0_5_0";
  inputs."choosenim-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_5_1".type = "github";
  inputs."choosenim-v0_5_1".owner = "riinr";
  inputs."choosenim-v0_5_1".repo = "flake-nimble";
  inputs."choosenim-v0_5_1".ref = "flake-pinning";
  inputs."choosenim-v0_5_1".dir = "nimpkgs/c/choosenim/v0_5_1";
  inputs."choosenim-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_6_0".type = "github";
  inputs."choosenim-v0_6_0".owner = "riinr";
  inputs."choosenim-v0_6_0".repo = "flake-nimble";
  inputs."choosenim-v0_6_0".ref = "flake-pinning";
  inputs."choosenim-v0_6_0".dir = "nimpkgs/c/choosenim/v0_6_0";
  inputs."choosenim-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_6_1-20201016".type = "github";
  inputs."choosenim-v0_6_1-20201016".owner = "riinr";
  inputs."choosenim-v0_6_1-20201016".repo = "flake-nimble";
  inputs."choosenim-v0_6_1-20201016".ref = "flake-pinning";
  inputs."choosenim-v0_6_1-20201016".dir = "nimpkgs/c/choosenim/v0_6_1-20201016";
  inputs."choosenim-v0_6_1-20201016".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_6_1-20201016".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_7_0".type = "github";
  inputs."choosenim-v0_7_0".owner = "riinr";
  inputs."choosenim-v0_7_0".repo = "flake-nimble";
  inputs."choosenim-v0_7_0".ref = "flake-pinning";
  inputs."choosenim-v0_7_0".dir = "nimpkgs/c/choosenim/v0_7_0";
  inputs."choosenim-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_7_0-20201017".type = "github";
  inputs."choosenim-v0_7_0-20201017".owner = "riinr";
  inputs."choosenim-v0_7_0-20201017".repo = "flake-nimble";
  inputs."choosenim-v0_7_0-20201017".ref = "flake-pinning";
  inputs."choosenim-v0_7_0-20201017".dir = "nimpkgs/c/choosenim/v0_7_0-20201017";
  inputs."choosenim-v0_7_0-20201017".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_0-20201017".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_7_2".type = "github";
  inputs."choosenim-v0_7_2".owner = "riinr";
  inputs."choosenim-v0_7_2".repo = "flake-nimble";
  inputs."choosenim-v0_7_2".ref = "flake-pinning";
  inputs."choosenim-v0_7_2".dir = "nimpkgs/c/choosenim/v0_7_2";
  inputs."choosenim-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_7_4".type = "github";
  inputs."choosenim-v0_7_4".owner = "riinr";
  inputs."choosenim-v0_7_4".repo = "flake-nimble";
  inputs."choosenim-v0_7_4".ref = "flake-pinning";
  inputs."choosenim-v0_7_4".dir = "nimpkgs/c/choosenim/v0_7_4";
  inputs."choosenim-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_7_5-20201029-edc69bd".type = "github";
  inputs."choosenim-v0_7_5-20201029-edc69bd".owner = "riinr";
  inputs."choosenim-v0_7_5-20201029-edc69bd".repo = "flake-nimble";
  inputs."choosenim-v0_7_5-20201029-edc69bd".ref = "flake-pinning";
  inputs."choosenim-v0_7_5-20201029-edc69bd".dir = "nimpkgs/c/choosenim/v0_7_5-20201029-edc69bd";
  inputs."choosenim-v0_7_5-20201029-edc69bd".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_5-20201029-edc69bd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_7_5-20210102-f338473".type = "github";
  inputs."choosenim-v0_7_5-20210102-f338473".owner = "riinr";
  inputs."choosenim-v0_7_5-20210102-f338473".repo = "flake-nimble";
  inputs."choosenim-v0_7_5-20210102-f338473".ref = "flake-pinning";
  inputs."choosenim-v0_7_5-20210102-f338473".dir = "nimpkgs/c/choosenim/v0_7_5-20210102-f338473";
  inputs."choosenim-v0_7_5-20210102-f338473".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_5-20210102-f338473".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_8_0".type = "github";
  inputs."choosenim-v0_8_0".owner = "riinr";
  inputs."choosenim-v0_8_0".repo = "flake-nimble";
  inputs."choosenim-v0_8_0".ref = "flake-pinning";
  inputs."choosenim-v0_8_0".dir = "nimpkgs/c/choosenim/v0_8_0";
  inputs."choosenim-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."choosenim-v0_8_2".type = "github";
  inputs."choosenim-v0_8_2".owner = "riinr";
  inputs."choosenim-v0_8_2".repo = "flake-nimble";
  inputs."choosenim-v0_8_2".ref = "flake-pinning";
  inputs."choosenim-v0_8_2".dir = "nimpkgs/c/choosenim/v0_8_2";
  inputs."choosenim-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}