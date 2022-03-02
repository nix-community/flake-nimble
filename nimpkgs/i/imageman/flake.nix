{
  description = ''Image manipulation library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."imageman-master".type = "github";
  inputs."imageman-master".owner = "riinr";
  inputs."imageman-master".repo = "flake-nimble";
  inputs."imageman-master".ref = "flake-pinning";
  inputs."imageman-master".dir = "nimpkgs/i/imageman/master";
  inputs."imageman-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_1_0".type = "github";
  inputs."imageman-v0_1_0".owner = "riinr";
  inputs."imageman-v0_1_0".repo = "flake-nimble";
  inputs."imageman-v0_1_0".ref = "flake-pinning";
  inputs."imageman-v0_1_0".dir = "nimpkgs/i/imageman/v0_1_0";
  inputs."imageman-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_2_0".type = "github";
  inputs."imageman-v0_2_0".owner = "riinr";
  inputs."imageman-v0_2_0".repo = "flake-nimble";
  inputs."imageman-v0_2_0".ref = "flake-pinning";
  inputs."imageman-v0_2_0".dir = "nimpkgs/i/imageman/v0_2_0";
  inputs."imageman-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_2_1".type = "github";
  inputs."imageman-v0_2_1".owner = "riinr";
  inputs."imageman-v0_2_1".repo = "flake-nimble";
  inputs."imageman-v0_2_1".ref = "flake-pinning";
  inputs."imageman-v0_2_1".dir = "nimpkgs/i/imageman/v0_2_1";
  inputs."imageman-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_2_2".type = "github";
  inputs."imageman-v0_2_2".owner = "riinr";
  inputs."imageman-v0_2_2".repo = "flake-nimble";
  inputs."imageman-v0_2_2".ref = "flake-pinning";
  inputs."imageman-v0_2_2".dir = "nimpkgs/i/imageman/v0_2_2";
  inputs."imageman-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_3_0".type = "github";
  inputs."imageman-v0_3_0".owner = "riinr";
  inputs."imageman-v0_3_0".repo = "flake-nimble";
  inputs."imageman-v0_3_0".ref = "flake-pinning";
  inputs."imageman-v0_3_0".dir = "nimpkgs/i/imageman/v0_3_0";
  inputs."imageman-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_4_0".type = "github";
  inputs."imageman-v0_4_0".owner = "riinr";
  inputs."imageman-v0_4_0".repo = "flake-nimble";
  inputs."imageman-v0_4_0".ref = "flake-pinning";
  inputs."imageman-v0_4_0".dir = "nimpkgs/i/imageman/v0_4_0";
  inputs."imageman-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_5_0".type = "github";
  inputs."imageman-v0_5_0".owner = "riinr";
  inputs."imageman-v0_5_0".repo = "flake-nimble";
  inputs."imageman-v0_5_0".ref = "flake-pinning";
  inputs."imageman-v0_5_0".dir = "nimpkgs/i/imageman/v0_5_0";
  inputs."imageman-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_5_1".type = "github";
  inputs."imageman-v0_5_1".owner = "riinr";
  inputs."imageman-v0_5_1".repo = "flake-nimble";
  inputs."imageman-v0_5_1".ref = "flake-pinning";
  inputs."imageman-v0_5_1".dir = "nimpkgs/i/imageman/v0_5_1";
  inputs."imageman-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_6_0".type = "github";
  inputs."imageman-v0_6_0".owner = "riinr";
  inputs."imageman-v0_6_0".repo = "flake-nimble";
  inputs."imageman-v0_6_0".ref = "flake-pinning";
  inputs."imageman-v0_6_0".dir = "nimpkgs/i/imageman/v0_6_0";
  inputs."imageman-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_6_1".type = "github";
  inputs."imageman-v0_6_1".owner = "riinr";
  inputs."imageman-v0_6_1".repo = "flake-nimble";
  inputs."imageman-v0_6_1".ref = "flake-pinning";
  inputs."imageman-v0_6_1".dir = "nimpkgs/i/imageman/v0_6_1";
  inputs."imageman-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_6_2".type = "github";
  inputs."imageman-v0_6_2".owner = "riinr";
  inputs."imageman-v0_6_2".repo = "flake-nimble";
  inputs."imageman-v0_6_2".ref = "flake-pinning";
  inputs."imageman-v0_6_2".dir = "nimpkgs/i/imageman/v0_6_2";
  inputs."imageman-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_6_3".type = "github";
  inputs."imageman-v0_6_3".owner = "riinr";
  inputs."imageman-v0_6_3".repo = "flake-nimble";
  inputs."imageman-v0_6_3".ref = "flake-pinning";
  inputs."imageman-v0_6_3".dir = "nimpkgs/i/imageman/v0_6_3";
  inputs."imageman-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_6_4".type = "github";
  inputs."imageman-v0_6_4".owner = "riinr";
  inputs."imageman-v0_6_4".repo = "flake-nimble";
  inputs."imageman-v0_6_4".ref = "flake-pinning";
  inputs."imageman-v0_6_4".dir = "nimpkgs/i/imageman/v0_6_4";
  inputs."imageman-v0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_6_5".type = "github";
  inputs."imageman-v0_6_5".owner = "riinr";
  inputs."imageman-v0_6_5".repo = "flake-nimble";
  inputs."imageman-v0_6_5".ref = "flake-pinning";
  inputs."imageman-v0_6_5".dir = "nimpkgs/i/imageman/v0_6_5";
  inputs."imageman-v0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_7_0".type = "github";
  inputs."imageman-v0_7_0".owner = "riinr";
  inputs."imageman-v0_7_0".repo = "flake-nimble";
  inputs."imageman-v0_7_0".ref = "flake-pinning";
  inputs."imageman-v0_7_0".dir = "nimpkgs/i/imageman/v0_7_0";
  inputs."imageman-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_7_1".type = "github";
  inputs."imageman-v0_7_1".owner = "riinr";
  inputs."imageman-v0_7_1".repo = "flake-nimble";
  inputs."imageman-v0_7_1".ref = "flake-pinning";
  inputs."imageman-v0_7_1".dir = "nimpkgs/i/imageman/v0_7_1";
  inputs."imageman-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_7_2".type = "github";
  inputs."imageman-v0_7_2".owner = "riinr";
  inputs."imageman-v0_7_2".repo = "flake-nimble";
  inputs."imageman-v0_7_2".ref = "flake-pinning";
  inputs."imageman-v0_7_2".dir = "nimpkgs/i/imageman/v0_7_2";
  inputs."imageman-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_7_3".type = "github";
  inputs."imageman-v0_7_3".owner = "riinr";
  inputs."imageman-v0_7_3".repo = "flake-nimble";
  inputs."imageman-v0_7_3".ref = "flake-pinning";
  inputs."imageman-v0_7_3".dir = "nimpkgs/i/imageman/v0_7_3";
  inputs."imageman-v0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_7_4".type = "github";
  inputs."imageman-v0_7_4".owner = "riinr";
  inputs."imageman-v0_7_4".repo = "flake-nimble";
  inputs."imageman-v0_7_4".ref = "flake-pinning";
  inputs."imageman-v0_7_4".dir = "nimpkgs/i/imageman/v0_7_4";
  inputs."imageman-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_7_5".type = "github";
  inputs."imageman-v0_7_5".owner = "riinr";
  inputs."imageman-v0_7_5".repo = "flake-nimble";
  inputs."imageman-v0_7_5".ref = "flake-pinning";
  inputs."imageman-v0_7_5".dir = "nimpkgs/i/imageman/v0_7_5";
  inputs."imageman-v0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_7_6".type = "github";
  inputs."imageman-v0_7_6".owner = "riinr";
  inputs."imageman-v0_7_6".repo = "flake-nimble";
  inputs."imageman-v0_7_6".ref = "flake-pinning";
  inputs."imageman-v0_7_6".dir = "nimpkgs/i/imageman/v0_7_6";
  inputs."imageman-v0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_8_0".type = "github";
  inputs."imageman-v0_8_0".owner = "riinr";
  inputs."imageman-v0_8_0".repo = "flake-nimble";
  inputs."imageman-v0_8_0".ref = "flake-pinning";
  inputs."imageman-v0_8_0".dir = "nimpkgs/i/imageman/v0_8_0";
  inputs."imageman-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_8_1".type = "github";
  inputs."imageman-v0_8_1".owner = "riinr";
  inputs."imageman-v0_8_1".repo = "flake-nimble";
  inputs."imageman-v0_8_1".ref = "flake-pinning";
  inputs."imageman-v0_8_1".dir = "nimpkgs/i/imageman/v0_8_1";
  inputs."imageman-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."imageman-v0_8_2".type = "github";
  inputs."imageman-v0_8_2".owner = "riinr";
  inputs."imageman-v0_8_2".repo = "flake-nimble";
  inputs."imageman-v0_8_2".ref = "flake-pinning";
  inputs."imageman-v0_8_2".dir = "nimpkgs/i/imageman/v0_8_2";
  inputs."imageman-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}