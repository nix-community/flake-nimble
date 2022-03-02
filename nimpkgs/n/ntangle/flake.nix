{
  description = ''Command-line utility for Tangling of Org mode documents'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ntangle-master".type = "github";
  inputs."ntangle-master".owner = "riinr";
  inputs."ntangle-master".repo = "flake-nimble";
  inputs."ntangle-master".ref = "flake-pinning";
  inputs."ntangle-master".dir = "nimpkgs/n/ntangle/master";
  inputs."ntangle-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_1_0".type = "github";
  inputs."ntangle-v0_1_0".owner = "riinr";
  inputs."ntangle-v0_1_0".repo = "flake-nimble";
  inputs."ntangle-v0_1_0".ref = "flake-pinning";
  inputs."ntangle-v0_1_0".dir = "nimpkgs/n/ntangle/v0_1_0";
  inputs."ntangle-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_1_1".type = "github";
  inputs."ntangle-v0_1_1".owner = "riinr";
  inputs."ntangle-v0_1_1".repo = "flake-nimble";
  inputs."ntangle-v0_1_1".ref = "flake-pinning";
  inputs."ntangle-v0_1_1".dir = "nimpkgs/n/ntangle/v0_1_1";
  inputs."ntangle-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_2_0".type = "github";
  inputs."ntangle-v0_2_0".owner = "riinr";
  inputs."ntangle-v0_2_0".repo = "flake-nimble";
  inputs."ntangle-v0_2_0".ref = "flake-pinning";
  inputs."ntangle-v0_2_0".dir = "nimpkgs/n/ntangle/v0_2_0";
  inputs."ntangle-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_2_1".type = "github";
  inputs."ntangle-v0_2_1".owner = "riinr";
  inputs."ntangle-v0_2_1".repo = "flake-nimble";
  inputs."ntangle-v0_2_1".ref = "flake-pinning";
  inputs."ntangle-v0_2_1".dir = "nimpkgs/n/ntangle/v0_2_1";
  inputs."ntangle-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_2_2".type = "github";
  inputs."ntangle-v0_2_2".owner = "riinr";
  inputs."ntangle-v0_2_2".repo = "flake-nimble";
  inputs."ntangle-v0_2_2".ref = "flake-pinning";
  inputs."ntangle-v0_2_2".dir = "nimpkgs/n/ntangle/v0_2_2";
  inputs."ntangle-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_3_0".type = "github";
  inputs."ntangle-v0_3_0".owner = "riinr";
  inputs."ntangle-v0_3_0".repo = "flake-nimble";
  inputs."ntangle-v0_3_0".ref = "flake-pinning";
  inputs."ntangle-v0_3_0".dir = "nimpkgs/n/ntangle/v0_3_0";
  inputs."ntangle-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_4_0".type = "github";
  inputs."ntangle-v0_4_0".owner = "riinr";
  inputs."ntangle-v0_4_0".repo = "flake-nimble";
  inputs."ntangle-v0_4_0".ref = "flake-pinning";
  inputs."ntangle-v0_4_0".dir = "nimpkgs/n/ntangle/v0_4_0";
  inputs."ntangle-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_4_1".type = "github";
  inputs."ntangle-v0_4_1".owner = "riinr";
  inputs."ntangle-v0_4_1".repo = "flake-nimble";
  inputs."ntangle-v0_4_1".ref = "flake-pinning";
  inputs."ntangle-v0_4_1".dir = "nimpkgs/n/ntangle/v0_4_1";
  inputs."ntangle-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_4_2".type = "github";
  inputs."ntangle-v0_4_2".owner = "riinr";
  inputs."ntangle-v0_4_2".repo = "flake-nimble";
  inputs."ntangle-v0_4_2".ref = "flake-pinning";
  inputs."ntangle-v0_4_2".dir = "nimpkgs/n/ntangle/v0_4_2";
  inputs."ntangle-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_4_3".type = "github";
  inputs."ntangle-v0_4_3".owner = "riinr";
  inputs."ntangle-v0_4_3".repo = "flake-nimble";
  inputs."ntangle-v0_4_3".ref = "flake-pinning";
  inputs."ntangle-v0_4_3".dir = "nimpkgs/n/ntangle/v0_4_3";
  inputs."ntangle-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_5_0".type = "github";
  inputs."ntangle-v0_5_0".owner = "riinr";
  inputs."ntangle-v0_5_0".repo = "flake-nimble";
  inputs."ntangle-v0_5_0".ref = "flake-pinning";
  inputs."ntangle-v0_5_0".dir = "nimpkgs/n/ntangle/v0_5_0";
  inputs."ntangle-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_5_1".type = "github";
  inputs."ntangle-v0_5_1".owner = "riinr";
  inputs."ntangle-v0_5_1".repo = "flake-nimble";
  inputs."ntangle-v0_5_1".ref = "flake-pinning";
  inputs."ntangle-v0_5_1".dir = "nimpkgs/n/ntangle/v0_5_1";
  inputs."ntangle-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_6_0".type = "github";
  inputs."ntangle-v0_6_0".owner = "riinr";
  inputs."ntangle-v0_6_0".repo = "flake-nimble";
  inputs."ntangle-v0_6_0".ref = "flake-pinning";
  inputs."ntangle-v0_6_0".dir = "nimpkgs/n/ntangle/v0_6_0";
  inputs."ntangle-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_6_1".type = "github";
  inputs."ntangle-v0_6_1".owner = "riinr";
  inputs."ntangle-v0_6_1".repo = "flake-nimble";
  inputs."ntangle-v0_6_1".ref = "flake-pinning";
  inputs."ntangle-v0_6_1".dir = "nimpkgs/n/ntangle/v0_6_1";
  inputs."ntangle-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_6_2".type = "github";
  inputs."ntangle-v0_6_2".owner = "riinr";
  inputs."ntangle-v0_6_2".repo = "flake-nimble";
  inputs."ntangle-v0_6_2".ref = "flake-pinning";
  inputs."ntangle-v0_6_2".dir = "nimpkgs/n/ntangle/v0_6_2";
  inputs."ntangle-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_6_3".type = "github";
  inputs."ntangle-v0_6_3".owner = "riinr";
  inputs."ntangle-v0_6_3".repo = "flake-nimble";
  inputs."ntangle-v0_6_3".ref = "flake-pinning";
  inputs."ntangle-v0_6_3".dir = "nimpkgs/n/ntangle/v0_6_3";
  inputs."ntangle-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_6_4".type = "github";
  inputs."ntangle-v0_6_4".owner = "riinr";
  inputs."ntangle-v0_6_4".repo = "flake-nimble";
  inputs."ntangle-v0_6_4".ref = "flake-pinning";
  inputs."ntangle-v0_6_4".dir = "nimpkgs/n/ntangle/v0_6_4";
  inputs."ntangle-v0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_6_5".type = "github";
  inputs."ntangle-v0_6_5".owner = "riinr";
  inputs."ntangle-v0_6_5".repo = "flake-nimble";
  inputs."ntangle-v0_6_5".ref = "flake-pinning";
  inputs."ntangle-v0_6_5".dir = "nimpkgs/n/ntangle/v0_6_5";
  inputs."ntangle-v0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ntangle-v0_6_6".type = "github";
  inputs."ntangle-v0_6_6".owner = "riinr";
  inputs."ntangle-v0_6_6".repo = "flake-nimble";
  inputs."ntangle-v0_6_6".ref = "flake-pinning";
  inputs."ntangle-v0_6_6".dir = "nimpkgs/n/ntangle/v0_6_6";
  inputs."ntangle-v0_6_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}