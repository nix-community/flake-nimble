{
  description = ''nimjson generates nim object definitions from json documents.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimjson-master".type = "github";
  inputs."nimjson-master".owner = "riinr";
  inputs."nimjson-master".repo = "flake-nimble";
  inputs."nimjson-master".ref = "flake-pinning";
  inputs."nimjson-master".dir = "nimpkgs/n/nimjson/master";
  inputs."nimjson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_0_0".type = "github";
  inputs."nimjson-v1_0_0".owner = "riinr";
  inputs."nimjson-v1_0_0".repo = "flake-nimble";
  inputs."nimjson-v1_0_0".ref = "flake-pinning";
  inputs."nimjson-v1_0_0".dir = "nimpkgs/n/nimjson/v1_0_0";
  inputs."nimjson-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_0_1".type = "github";
  inputs."nimjson-v1_0_1".owner = "riinr";
  inputs."nimjson-v1_0_1".repo = "flake-nimble";
  inputs."nimjson-v1_0_1".ref = "flake-pinning";
  inputs."nimjson-v1_0_1".dir = "nimpkgs/n/nimjson/v1_0_1";
  inputs."nimjson-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_0_2".type = "github";
  inputs."nimjson-v1_0_2".owner = "riinr";
  inputs."nimjson-v1_0_2".repo = "flake-nimble";
  inputs."nimjson-v1_0_2".ref = "flake-pinning";
  inputs."nimjson-v1_0_2".dir = "nimpkgs/n/nimjson/v1_0_2";
  inputs."nimjson-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_1_0".type = "github";
  inputs."nimjson-v1_1_0".owner = "riinr";
  inputs."nimjson-v1_1_0".repo = "flake-nimble";
  inputs."nimjson-v1_1_0".ref = "flake-pinning";
  inputs."nimjson-v1_1_0".dir = "nimpkgs/n/nimjson/v1_1_0";
  inputs."nimjson-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_2_0".type = "github";
  inputs."nimjson-v1_2_0".owner = "riinr";
  inputs."nimjson-v1_2_0".repo = "flake-nimble";
  inputs."nimjson-v1_2_0".ref = "flake-pinning";
  inputs."nimjson-v1_2_0".dir = "nimpkgs/n/nimjson/v1_2_0";
  inputs."nimjson-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_2_1".type = "github";
  inputs."nimjson-v1_2_1".owner = "riinr";
  inputs."nimjson-v1_2_1".repo = "flake-nimble";
  inputs."nimjson-v1_2_1".ref = "flake-pinning";
  inputs."nimjson-v1_2_1".dir = "nimpkgs/n/nimjson/v1_2_1";
  inputs."nimjson-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_2_2".type = "github";
  inputs."nimjson-v1_2_2".owner = "riinr";
  inputs."nimjson-v1_2_2".repo = "flake-nimble";
  inputs."nimjson-v1_2_2".ref = "flake-pinning";
  inputs."nimjson-v1_2_2".dir = "nimpkgs/n/nimjson/v1_2_2";
  inputs."nimjson-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_2_3".type = "github";
  inputs."nimjson-v1_2_3".owner = "riinr";
  inputs."nimjson-v1_2_3".repo = "flake-nimble";
  inputs."nimjson-v1_2_3".ref = "flake-pinning";
  inputs."nimjson-v1_2_3".dir = "nimpkgs/n/nimjson/v1_2_3";
  inputs."nimjson-v1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_2_4".type = "github";
  inputs."nimjson-v1_2_4".owner = "riinr";
  inputs."nimjson-v1_2_4".repo = "flake-nimble";
  inputs."nimjson-v1_2_4".ref = "flake-pinning";
  inputs."nimjson-v1_2_4".dir = "nimpkgs/n/nimjson/v1_2_4";
  inputs."nimjson-v1_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_2_5".type = "github";
  inputs."nimjson-v1_2_5".owner = "riinr";
  inputs."nimjson-v1_2_5".repo = "flake-nimble";
  inputs."nimjson-v1_2_5".ref = "flake-pinning";
  inputs."nimjson-v1_2_5".dir = "nimpkgs/n/nimjson/v1_2_5";
  inputs."nimjson-v1_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_2_6".type = "github";
  inputs."nimjson-v1_2_6".owner = "riinr";
  inputs."nimjson-v1_2_6".repo = "flake-nimble";
  inputs."nimjson-v1_2_6".ref = "flake-pinning";
  inputs."nimjson-v1_2_6".dir = "nimpkgs/n/nimjson/v1_2_6";
  inputs."nimjson-v1_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_2_7".type = "github";
  inputs."nimjson-v1_2_7".owner = "riinr";
  inputs."nimjson-v1_2_7".repo = "flake-nimble";
  inputs."nimjson-v1_2_7".ref = "flake-pinning";
  inputs."nimjson-v1_2_7".dir = "nimpkgs/n/nimjson/v1_2_7";
  inputs."nimjson-v1_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_2_8".type = "github";
  inputs."nimjson-v1_2_8".owner = "riinr";
  inputs."nimjson-v1_2_8".repo = "flake-nimble";
  inputs."nimjson-v1_2_8".ref = "flake-pinning";
  inputs."nimjson-v1_2_8".dir = "nimpkgs/n/nimjson/v1_2_8";
  inputs."nimjson-v1_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_3_0".type = "github";
  inputs."nimjson-v1_3_0".owner = "riinr";
  inputs."nimjson-v1_3_0".repo = "flake-nimble";
  inputs."nimjson-v1_3_0".ref = "flake-pinning";
  inputs."nimjson-v1_3_0".dir = "nimpkgs/n/nimjson/v1_3_0";
  inputs."nimjson-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v1_3_1".type = "github";
  inputs."nimjson-v1_3_1".owner = "riinr";
  inputs."nimjson-v1_3_1".repo = "flake-nimble";
  inputs."nimjson-v1_3_1".ref = "flake-pinning";
  inputs."nimjson-v1_3_1".dir = "nimpkgs/n/nimjson/v1_3_1";
  inputs."nimjson-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimjson-v2_0_0".type = "github";
  inputs."nimjson-v2_0_0".owner = "riinr";
  inputs."nimjson-v2_0_0".repo = "flake-nimble";
  inputs."nimjson-v2_0_0".ref = "flake-pinning";
  inputs."nimjson-v2_0_0".dir = "nimpkgs/n/nimjson/v2_0_0";
  inputs."nimjson-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}