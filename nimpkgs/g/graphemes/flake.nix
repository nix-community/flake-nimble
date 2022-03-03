{
  description = ''Grapheme aware string handling (Unicode tr29)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."graphemes-master".type = "github";
  inputs."graphemes-master".owner = "riinr";
  inputs."graphemes-master".repo = "flake-nimble";
  inputs."graphemes-master".ref = "flake-pinning";
  inputs."graphemes-master".dir = "nimpkgs/g/graphemes/master";
  inputs."graphemes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_1_0".type = "github";
  inputs."graphemes-v0_1_0".owner = "riinr";
  inputs."graphemes-v0_1_0".repo = "flake-nimble";
  inputs."graphemes-v0_1_0".ref = "flake-pinning";
  inputs."graphemes-v0_1_0".dir = "nimpkgs/g/graphemes/v0_1_0";
  inputs."graphemes-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_1_1".type = "github";
  inputs."graphemes-v0_1_1".owner = "riinr";
  inputs."graphemes-v0_1_1".repo = "flake-nimble";
  inputs."graphemes-v0_1_1".ref = "flake-pinning";
  inputs."graphemes-v0_1_1".dir = "nimpkgs/g/graphemes/v0_1_1";
  inputs."graphemes-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_1_2".type = "github";
  inputs."graphemes-v0_1_2".owner = "riinr";
  inputs."graphemes-v0_1_2".repo = "flake-nimble";
  inputs."graphemes-v0_1_2".ref = "flake-pinning";
  inputs."graphemes-v0_1_2".dir = "nimpkgs/g/graphemes/v0_1_2";
  inputs."graphemes-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_1_3".type = "github";
  inputs."graphemes-v0_1_3".owner = "riinr";
  inputs."graphemes-v0_1_3".repo = "flake-nimble";
  inputs."graphemes-v0_1_3".ref = "flake-pinning";
  inputs."graphemes-v0_1_3".dir = "nimpkgs/g/graphemes/v0_1_3";
  inputs."graphemes-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_1_4".type = "github";
  inputs."graphemes-v0_1_4".owner = "riinr";
  inputs."graphemes-v0_1_4".repo = "flake-nimble";
  inputs."graphemes-v0_1_4".ref = "flake-pinning";
  inputs."graphemes-v0_1_4".dir = "nimpkgs/g/graphemes/v0_1_4";
  inputs."graphemes-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_1_5".type = "github";
  inputs."graphemes-v0_1_5".owner = "riinr";
  inputs."graphemes-v0_1_5".repo = "flake-nimble";
  inputs."graphemes-v0_1_5".ref = "flake-pinning";
  inputs."graphemes-v0_1_5".dir = "nimpkgs/g/graphemes/v0_1_5";
  inputs."graphemes-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_10_0".type = "github";
  inputs."graphemes-v0_10_0".owner = "riinr";
  inputs."graphemes-v0_10_0".repo = "flake-nimble";
  inputs."graphemes-v0_10_0".ref = "flake-pinning";
  inputs."graphemes-v0_10_0".dir = "nimpkgs/g/graphemes/v0_10_0";
  inputs."graphemes-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_2_0".type = "github";
  inputs."graphemes-v0_2_0".owner = "riinr";
  inputs."graphemes-v0_2_0".repo = "flake-nimble";
  inputs."graphemes-v0_2_0".ref = "flake-pinning";
  inputs."graphemes-v0_2_0".dir = "nimpkgs/g/graphemes/v0_2_0";
  inputs."graphemes-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_3_0".type = "github";
  inputs."graphemes-v0_3_0".owner = "riinr";
  inputs."graphemes-v0_3_0".repo = "flake-nimble";
  inputs."graphemes-v0_3_0".ref = "flake-pinning";
  inputs."graphemes-v0_3_0".dir = "nimpkgs/g/graphemes/v0_3_0";
  inputs."graphemes-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_4_0".type = "github";
  inputs."graphemes-v0_4_0".owner = "riinr";
  inputs."graphemes-v0_4_0".repo = "flake-nimble";
  inputs."graphemes-v0_4_0".ref = "flake-pinning";
  inputs."graphemes-v0_4_0".dir = "nimpkgs/g/graphemes/v0_4_0";
  inputs."graphemes-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_4_1".type = "github";
  inputs."graphemes-v0_4_1".owner = "riinr";
  inputs."graphemes-v0_4_1".repo = "flake-nimble";
  inputs."graphemes-v0_4_1".ref = "flake-pinning";
  inputs."graphemes-v0_4_1".dir = "nimpkgs/g/graphemes/v0_4_1";
  inputs."graphemes-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_5_0".type = "github";
  inputs."graphemes-v0_5_0".owner = "riinr";
  inputs."graphemes-v0_5_0".repo = "flake-nimble";
  inputs."graphemes-v0_5_0".ref = "flake-pinning";
  inputs."graphemes-v0_5_0".dir = "nimpkgs/g/graphemes/v0_5_0";
  inputs."graphemes-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_6_0".type = "github";
  inputs."graphemes-v0_6_0".owner = "riinr";
  inputs."graphemes-v0_6_0".repo = "flake-nimble";
  inputs."graphemes-v0_6_0".ref = "flake-pinning";
  inputs."graphemes-v0_6_0".dir = "nimpkgs/g/graphemes/v0_6_0";
  inputs."graphemes-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_7_0".type = "github";
  inputs."graphemes-v0_7_0".owner = "riinr";
  inputs."graphemes-v0_7_0".repo = "flake-nimble";
  inputs."graphemes-v0_7_0".ref = "flake-pinning";
  inputs."graphemes-v0_7_0".dir = "nimpkgs/g/graphemes/v0_7_0";
  inputs."graphemes-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."graphemes-v0_8_0".type = "github";
  inputs."graphemes-v0_8_0".owner = "riinr";
  inputs."graphemes-v0_8_0".repo = "flake-nimble";
  inputs."graphemes-v0_8_0".ref = "flake-pinning";
  inputs."graphemes-v0_8_0".dir = "nimpkgs/g/graphemes/v0_8_0";
  inputs."graphemes-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}