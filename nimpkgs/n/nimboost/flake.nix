{
  description = ''Additions to the Nim's standard library, like boost for C++'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimboost-master".type = "github";
  inputs."nimboost-master".owner = "riinr";
  inputs."nimboost-master".repo = "flake-nimble";
  inputs."nimboost-master".ref = "flake-pinning";
  inputs."nimboost-master".dir = "nimpkgs/n/nimboost/master";
  inputs."nimboost-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_0_1".type = "github";
  inputs."nimboost-v0_0_1".owner = "riinr";
  inputs."nimboost-v0_0_1".repo = "flake-nimble";
  inputs."nimboost-v0_0_1".ref = "flake-pinning";
  inputs."nimboost-v0_0_1".dir = "nimpkgs/n/nimboost/v0_0_1";
  inputs."nimboost-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_1_0".type = "github";
  inputs."nimboost-v0_1_0".owner = "riinr";
  inputs."nimboost-v0_1_0".repo = "flake-nimble";
  inputs."nimboost-v0_1_0".ref = "flake-pinning";
  inputs."nimboost-v0_1_0".dir = "nimpkgs/n/nimboost/v0_1_0";
  inputs."nimboost-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_2_0".type = "github";
  inputs."nimboost-v0_2_0".owner = "riinr";
  inputs."nimboost-v0_2_0".repo = "flake-nimble";
  inputs."nimboost-v0_2_0".ref = "flake-pinning";
  inputs."nimboost-v0_2_0".dir = "nimpkgs/n/nimboost/v0_2_0";
  inputs."nimboost-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_2_1".type = "github";
  inputs."nimboost-v0_2_1".owner = "riinr";
  inputs."nimboost-v0_2_1".repo = "flake-nimble";
  inputs."nimboost-v0_2_1".ref = "flake-pinning";
  inputs."nimboost-v0_2_1".dir = "nimpkgs/n/nimboost/v0_2_1";
  inputs."nimboost-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_3_0".type = "github";
  inputs."nimboost-v0_3_0".owner = "riinr";
  inputs."nimboost-v0_3_0".repo = "flake-nimble";
  inputs."nimboost-v0_3_0".ref = "flake-pinning";
  inputs."nimboost-v0_3_0".dir = "nimpkgs/n/nimboost/v0_3_0";
  inputs."nimboost-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_3_1".type = "github";
  inputs."nimboost-v0_3_1".owner = "riinr";
  inputs."nimboost-v0_3_1".repo = "flake-nimble";
  inputs."nimboost-v0_3_1".ref = "flake-pinning";
  inputs."nimboost-v0_3_1".dir = "nimpkgs/n/nimboost/v0_3_1";
  inputs."nimboost-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_3_2".type = "github";
  inputs."nimboost-v0_3_2".owner = "riinr";
  inputs."nimboost-v0_3_2".repo = "flake-nimble";
  inputs."nimboost-v0_3_2".ref = "flake-pinning";
  inputs."nimboost-v0_3_2".dir = "nimpkgs/n/nimboost/v0_3_2";
  inputs."nimboost-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_3_3".type = "github";
  inputs."nimboost-v0_3_3".owner = "riinr";
  inputs."nimboost-v0_3_3".repo = "flake-nimble";
  inputs."nimboost-v0_3_3".ref = "flake-pinning";
  inputs."nimboost-v0_3_3".dir = "nimpkgs/n/nimboost/v0_3_3";
  inputs."nimboost-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_3_4".type = "github";
  inputs."nimboost-v0_3_4".owner = "riinr";
  inputs."nimboost-v0_3_4".repo = "flake-nimble";
  inputs."nimboost-v0_3_4".ref = "flake-pinning";
  inputs."nimboost-v0_3_4".dir = "nimpkgs/n/nimboost/v0_3_4";
  inputs."nimboost-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_3_5".type = "github";
  inputs."nimboost-v0_3_5".owner = "riinr";
  inputs."nimboost-v0_3_5".repo = "flake-nimble";
  inputs."nimboost-v0_3_5".ref = "flake-pinning";
  inputs."nimboost-v0_3_5".dir = "nimpkgs/n/nimboost/v0_3_5";
  inputs."nimboost-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_3_6".type = "github";
  inputs."nimboost-v0_3_6".owner = "riinr";
  inputs."nimboost-v0_3_6".repo = "flake-nimble";
  inputs."nimboost-v0_3_6".ref = "flake-pinning";
  inputs."nimboost-v0_3_6".dir = "nimpkgs/n/nimboost/v0_3_6";
  inputs."nimboost-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_4_0".type = "github";
  inputs."nimboost-v0_4_0".owner = "riinr";
  inputs."nimboost-v0_4_0".repo = "flake-nimble";
  inputs."nimboost-v0_4_0".ref = "flake-pinning";
  inputs."nimboost-v0_4_0".dir = "nimpkgs/n/nimboost/v0_4_0";
  inputs."nimboost-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_4_1".type = "github";
  inputs."nimboost-v0_4_1".owner = "riinr";
  inputs."nimboost-v0_4_1".repo = "flake-nimble";
  inputs."nimboost-v0_4_1".ref = "flake-pinning";
  inputs."nimboost-v0_4_1".dir = "nimpkgs/n/nimboost/v0_4_1";
  inputs."nimboost-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_4_2".type = "github";
  inputs."nimboost-v0_4_2".owner = "riinr";
  inputs."nimboost-v0_4_2".repo = "flake-nimble";
  inputs."nimboost-v0_4_2".ref = "flake-pinning";
  inputs."nimboost-v0_4_2".dir = "nimpkgs/n/nimboost/v0_4_2";
  inputs."nimboost-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_4_3".type = "github";
  inputs."nimboost-v0_4_3".owner = "riinr";
  inputs."nimboost-v0_4_3".repo = "flake-nimble";
  inputs."nimboost-v0_4_3".ref = "flake-pinning";
  inputs."nimboost-v0_4_3".dir = "nimpkgs/n/nimboost/v0_4_3";
  inputs."nimboost-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_4_4".type = "github";
  inputs."nimboost-v0_4_4".owner = "riinr";
  inputs."nimboost-v0_4_4".repo = "flake-nimble";
  inputs."nimboost-v0_4_4".ref = "flake-pinning";
  inputs."nimboost-v0_4_4".dir = "nimpkgs/n/nimboost/v0_4_4";
  inputs."nimboost-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_4_5".type = "github";
  inputs."nimboost-v0_4_5".owner = "riinr";
  inputs."nimboost-v0_4_5".repo = "flake-nimble";
  inputs."nimboost-v0_4_5".ref = "flake-pinning";
  inputs."nimboost-v0_4_5".dir = "nimpkgs/n/nimboost/v0_4_5";
  inputs."nimboost-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_4_8".type = "github";
  inputs."nimboost-v0_4_8".owner = "riinr";
  inputs."nimboost-v0_4_8".repo = "flake-nimble";
  inputs."nimboost-v0_4_8".ref = "flake-pinning";
  inputs."nimboost-v0_4_8".dir = "nimpkgs/n/nimboost/v0_4_8";
  inputs."nimboost-v0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_5_0".type = "github";
  inputs."nimboost-v0_5_0".owner = "riinr";
  inputs."nimboost-v0_5_0".repo = "flake-nimble";
  inputs."nimboost-v0_5_0".ref = "flake-pinning";
  inputs."nimboost-v0_5_0".dir = "nimpkgs/n/nimboost/v0_5_0";
  inputs."nimboost-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_5_1".type = "github";
  inputs."nimboost-v0_5_1".owner = "riinr";
  inputs."nimboost-v0_5_1".repo = "flake-nimble";
  inputs."nimboost-v0_5_1".ref = "flake-pinning";
  inputs."nimboost-v0_5_1".dir = "nimpkgs/n/nimboost/v0_5_1";
  inputs."nimboost-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_5_3".type = "github";
  inputs."nimboost-v0_5_3".owner = "riinr";
  inputs."nimboost-v0_5_3".repo = "flake-nimble";
  inputs."nimboost-v0_5_3".ref = "flake-pinning";
  inputs."nimboost-v0_5_3".dir = "nimpkgs/n/nimboost/v0_5_3";
  inputs."nimboost-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_5_4".type = "github";
  inputs."nimboost-v0_5_4".owner = "riinr";
  inputs."nimboost-v0_5_4".repo = "flake-nimble";
  inputs."nimboost-v0_5_4".ref = "flake-pinning";
  inputs."nimboost-v0_5_4".dir = "nimpkgs/n/nimboost/v0_5_4";
  inputs."nimboost-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimboost-v0_5_5".type = "github";
  inputs."nimboost-v0_5_5".owner = "riinr";
  inputs."nimboost-v0_5_5".repo = "flake-nimble";
  inputs."nimboost-v0_5_5".ref = "flake-pinning";
  inputs."nimboost-v0_5_5".dir = "nimpkgs/n/nimboost/v0_5_5";
  inputs."nimboost-v0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}