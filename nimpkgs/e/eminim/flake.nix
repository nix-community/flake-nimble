{
  description = ''JSON serialization framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."eminim-master".type = "github";
  inputs."eminim-master".owner = "riinr";
  inputs."eminim-master".repo = "flake-nimble";
  inputs."eminim-master".ref = "flake-pinning";
  inputs."eminim-master".dir = "nimpkgs/e/eminim/master";
  inputs."eminim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v0_2_0".type = "github";
  inputs."eminim-v0_2_0".owner = "riinr";
  inputs."eminim-v0_2_0".repo = "flake-nimble";
  inputs."eminim-v0_2_0".ref = "flake-pinning";
  inputs."eminim-v0_2_0".dir = "nimpkgs/e/eminim/v0_2_0";
  inputs."eminim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v0_3_0".type = "github";
  inputs."eminim-v0_3_0".owner = "riinr";
  inputs."eminim-v0_3_0".repo = "flake-nimble";
  inputs."eminim-v0_3_0".ref = "flake-pinning";
  inputs."eminim-v0_3_0".dir = "nimpkgs/e/eminim/v0_3_0";
  inputs."eminim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v0_4_0".type = "github";
  inputs."eminim-v0_4_0".owner = "riinr";
  inputs."eminim-v0_4_0".repo = "flake-nimble";
  inputs."eminim-v0_4_0".ref = "flake-pinning";
  inputs."eminim-v0_4_0".dir = "nimpkgs/e/eminim/v0_4_0";
  inputs."eminim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v1_0_0".type = "github";
  inputs."eminim-v1_0_0".owner = "riinr";
  inputs."eminim-v1_0_0".repo = "flake-nimble";
  inputs."eminim-v1_0_0".ref = "flake-pinning";
  inputs."eminim-v1_0_0".dir = "nimpkgs/e/eminim/v1_0_0";
  inputs."eminim-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v1_1_0".type = "github";
  inputs."eminim-v1_1_0".owner = "riinr";
  inputs."eminim-v1_1_0".repo = "flake-nimble";
  inputs."eminim-v1_1_0".ref = "flake-pinning";
  inputs."eminim-v1_1_0".dir = "nimpkgs/e/eminim/v1_1_0";
  inputs."eminim-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v1_2_0".type = "github";
  inputs."eminim-v1_2_0".owner = "riinr";
  inputs."eminim-v1_2_0".repo = "flake-nimble";
  inputs."eminim-v1_2_0".ref = "flake-pinning";
  inputs."eminim-v1_2_0".dir = "nimpkgs/e/eminim/v1_2_0";
  inputs."eminim-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v1_3_0".type = "github";
  inputs."eminim-v1_3_0".owner = "riinr";
  inputs."eminim-v1_3_0".repo = "flake-nimble";
  inputs."eminim-v1_3_0".ref = "flake-pinning";
  inputs."eminim-v1_3_0".dir = "nimpkgs/e/eminim/v1_3_0";
  inputs."eminim-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v1_4_0".type = "github";
  inputs."eminim-v1_4_0".owner = "riinr";
  inputs."eminim-v1_4_0".repo = "flake-nimble";
  inputs."eminim-v1_4_0".ref = "flake-pinning";
  inputs."eminim-v1_4_0".dir = "nimpkgs/e/eminim/v1_4_0";
  inputs."eminim-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v1_5_0".type = "github";
  inputs."eminim-v1_5_0".owner = "riinr";
  inputs."eminim-v1_5_0".repo = "flake-nimble";
  inputs."eminim-v1_5_0".ref = "flake-pinning";
  inputs."eminim-v1_5_0".dir = "nimpkgs/e/eminim/v1_5_0";
  inputs."eminim-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v1_6_0".type = "github";
  inputs."eminim-v1_6_0".owner = "riinr";
  inputs."eminim-v1_6_0".repo = "flake-nimble";
  inputs."eminim-v1_6_0".ref = "flake-pinning";
  inputs."eminim-v1_6_0".dir = "nimpkgs/e/eminim/v1_6_0";
  inputs."eminim-v1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v1_7_0".type = "github";
  inputs."eminim-v1_7_0".owner = "riinr";
  inputs."eminim-v1_7_0".repo = "flake-nimble";
  inputs."eminim-v1_7_0".ref = "flake-pinning";
  inputs."eminim-v1_7_0".dir = "nimpkgs/e/eminim/v1_7_0";
  inputs."eminim-v1_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v1_8_0".type = "github";
  inputs."eminim-v1_8_0".owner = "riinr";
  inputs."eminim-v1_8_0".repo = "flake-nimble";
  inputs."eminim-v1_8_0".ref = "flake-pinning";
  inputs."eminim-v1_8_0".dir = "nimpkgs/e/eminim/v1_8_0";
  inputs."eminim-v1_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v1_9_0".type = "github";
  inputs."eminim-v1_9_0".owner = "riinr";
  inputs."eminim-v1_9_0".repo = "flake-nimble";
  inputs."eminim-v1_9_0".ref = "flake-pinning";
  inputs."eminim-v1_9_0".dir = "nimpkgs/e/eminim/v1_9_0";
  inputs."eminim-v1_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_0_0".type = "github";
  inputs."eminim-v2_0_0".owner = "riinr";
  inputs."eminim-v2_0_0".repo = "flake-nimble";
  inputs."eminim-v2_0_0".ref = "flake-pinning";
  inputs."eminim-v2_0_0".dir = "nimpkgs/e/eminim/v2_0_0";
  inputs."eminim-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_0_1".type = "github";
  inputs."eminim-v2_0_1".owner = "riinr";
  inputs."eminim-v2_0_1".repo = "flake-nimble";
  inputs."eminim-v2_0_1".ref = "flake-pinning";
  inputs."eminim-v2_0_1".dir = "nimpkgs/e/eminim/v2_0_1";
  inputs."eminim-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_0_2".type = "github";
  inputs."eminim-v2_0_2".owner = "riinr";
  inputs."eminim-v2_0_2".repo = "flake-nimble";
  inputs."eminim-v2_0_2".ref = "flake-pinning";
  inputs."eminim-v2_0_2".dir = "nimpkgs/e/eminim/v2_0_2";
  inputs."eminim-v2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_0_3".type = "github";
  inputs."eminim-v2_0_3".owner = "riinr";
  inputs."eminim-v2_0_3".repo = "flake-nimble";
  inputs."eminim-v2_0_3".ref = "flake-pinning";
  inputs."eminim-v2_0_3".dir = "nimpkgs/e/eminim/v2_0_3";
  inputs."eminim-v2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_1_0".type = "github";
  inputs."eminim-v2_1_0".owner = "riinr";
  inputs."eminim-v2_1_0".repo = "flake-nimble";
  inputs."eminim-v2_1_0".ref = "flake-pinning";
  inputs."eminim-v2_1_0".dir = "nimpkgs/e/eminim/v2_1_0";
  inputs."eminim-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_2_0".type = "github";
  inputs."eminim-v2_2_0".owner = "riinr";
  inputs."eminim-v2_2_0".repo = "flake-nimble";
  inputs."eminim-v2_2_0".ref = "flake-pinning";
  inputs."eminim-v2_2_0".dir = "nimpkgs/e/eminim/v2_2_0";
  inputs."eminim-v2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_3_0".type = "github";
  inputs."eminim-v2_3_0".owner = "riinr";
  inputs."eminim-v2_3_0".repo = "flake-nimble";
  inputs."eminim-v2_3_0".ref = "flake-pinning";
  inputs."eminim-v2_3_0".dir = "nimpkgs/e/eminim/v2_3_0";
  inputs."eminim-v2_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_3_1".type = "github";
  inputs."eminim-v2_3_1".owner = "riinr";
  inputs."eminim-v2_3_1".repo = "flake-nimble";
  inputs."eminim-v2_3_1".ref = "flake-pinning";
  inputs."eminim-v2_3_1".dir = "nimpkgs/e/eminim/v2_3_1";
  inputs."eminim-v2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_4_0".type = "github";
  inputs."eminim-v2_4_0".owner = "riinr";
  inputs."eminim-v2_4_0".repo = "flake-nimble";
  inputs."eminim-v2_4_0".ref = "flake-pinning";
  inputs."eminim-v2_4_0".dir = "nimpkgs/e/eminim/v2_4_0";
  inputs."eminim-v2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_5_0".type = "github";
  inputs."eminim-v2_5_0".owner = "riinr";
  inputs."eminim-v2_5_0".repo = "flake-nimble";
  inputs."eminim-v2_5_0".ref = "flake-pinning";
  inputs."eminim-v2_5_0".dir = "nimpkgs/e/eminim/v2_5_0";
  inputs."eminim-v2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_5_1".type = "github";
  inputs."eminim-v2_5_1".owner = "riinr";
  inputs."eminim-v2_5_1".repo = "flake-nimble";
  inputs."eminim-v2_5_1".ref = "flake-pinning";
  inputs."eminim-v2_5_1".dir = "nimpkgs/e/eminim/v2_5_1";
  inputs."eminim-v2_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_6_0".type = "github";
  inputs."eminim-v2_6_0".owner = "riinr";
  inputs."eminim-v2_6_0".repo = "flake-nimble";
  inputs."eminim-v2_6_0".ref = "flake-pinning";
  inputs."eminim-v2_6_0".dir = "nimpkgs/e/eminim/v2_6_0";
  inputs."eminim-v2_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_7_0".type = "github";
  inputs."eminim-v2_7_0".owner = "riinr";
  inputs."eminim-v2_7_0".repo = "flake-nimble";
  inputs."eminim-v2_7_0".ref = "flake-pinning";
  inputs."eminim-v2_7_0".dir = "nimpkgs/e/eminim/v2_7_0";
  inputs."eminim-v2_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_8_0".type = "github";
  inputs."eminim-v2_8_0".owner = "riinr";
  inputs."eminim-v2_8_0".repo = "flake-nimble";
  inputs."eminim-v2_8_0".ref = "flake-pinning";
  inputs."eminim-v2_8_0".dir = "nimpkgs/e/eminim/v2_8_0";
  inputs."eminim-v2_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_8_1".type = "github";
  inputs."eminim-v2_8_1".owner = "riinr";
  inputs."eminim-v2_8_1".repo = "flake-nimble";
  inputs."eminim-v2_8_1".ref = "flake-pinning";
  inputs."eminim-v2_8_1".dir = "nimpkgs/e/eminim/v2_8_1";
  inputs."eminim-v2_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."eminim-v2_8_2".type = "github";
  inputs."eminim-v2_8_2".owner = "riinr";
  inputs."eminim-v2_8_2".repo = "flake-nimble";
  inputs."eminim-v2_8_2".ref = "flake-pinning";
  inputs."eminim-v2_8_2".dir = "nimpkgs/e/eminim/v2_8_2";
  inputs."eminim-v2_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}