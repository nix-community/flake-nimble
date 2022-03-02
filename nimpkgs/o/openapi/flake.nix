{
  description = ''OpenAPI Code Generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."openapi-master".type = "github";
  inputs."openapi-master".owner = "riinr";
  inputs."openapi-master".repo = "flake-nimble";
  inputs."openapi-master".ref = "flake-pinning";
  inputs."openapi-master".dir = "nimpkgs/o/openapi/master";
  inputs."openapi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-1_0_0".type = "github";
  inputs."openapi-1_0_0".owner = "riinr";
  inputs."openapi-1_0_0".repo = "flake-nimble";
  inputs."openapi-1_0_0".ref = "flake-pinning";
  inputs."openapi-1_0_0".dir = "nimpkgs/o/openapi/1_0_0";
  inputs."openapi-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-1_0_1".type = "github";
  inputs."openapi-1_0_1".owner = "riinr";
  inputs."openapi-1_0_1".repo = "flake-nimble";
  inputs."openapi-1_0_1".ref = "flake-pinning";
  inputs."openapi-1_0_1".dir = "nimpkgs/o/openapi/1_0_1";
  inputs."openapi-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-1_0_2".type = "github";
  inputs."openapi-1_0_2".owner = "riinr";
  inputs."openapi-1_0_2".repo = "flake-nimble";
  inputs."openapi-1_0_2".ref = "flake-pinning";
  inputs."openapi-1_0_2".dir = "nimpkgs/o/openapi/1_0_2";
  inputs."openapi-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-1_0_3".type = "github";
  inputs."openapi-1_0_3".owner = "riinr";
  inputs."openapi-1_0_3".repo = "flake-nimble";
  inputs."openapi-1_0_3".ref = "flake-pinning";
  inputs."openapi-1_0_3".dir = "nimpkgs/o/openapi/1_0_3";
  inputs."openapi-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-2_0_0".type = "github";
  inputs."openapi-2_0_0".owner = "riinr";
  inputs."openapi-2_0_0".repo = "flake-nimble";
  inputs."openapi-2_0_0".ref = "flake-pinning";
  inputs."openapi-2_0_0".dir = "nimpkgs/o/openapi/2_0_0";
  inputs."openapi-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-2_0_1".type = "github";
  inputs."openapi-2_0_1".owner = "riinr";
  inputs."openapi-2_0_1".repo = "flake-nimble";
  inputs."openapi-2_0_1".ref = "flake-pinning";
  inputs."openapi-2_0_1".dir = "nimpkgs/o/openapi/2_0_1";
  inputs."openapi-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_0_0".type = "github";
  inputs."openapi-3_0_0".owner = "riinr";
  inputs."openapi-3_0_0".repo = "flake-nimble";
  inputs."openapi-3_0_0".ref = "flake-pinning";
  inputs."openapi-3_0_0".dir = "nimpkgs/o/openapi/3_0_0";
  inputs."openapi-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_0_1".type = "github";
  inputs."openapi-3_0_1".owner = "riinr";
  inputs."openapi-3_0_1".repo = "flake-nimble";
  inputs."openapi-3_0_1".ref = "flake-pinning";
  inputs."openapi-3_0_1".dir = "nimpkgs/o/openapi/3_0_1";
  inputs."openapi-3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_1_0".type = "github";
  inputs."openapi-3_1_0".owner = "riinr";
  inputs."openapi-3_1_0".repo = "flake-nimble";
  inputs."openapi-3_1_0".ref = "flake-pinning";
  inputs."openapi-3_1_0".dir = "nimpkgs/o/openapi/3_1_0";
  inputs."openapi-3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_1_1".type = "github";
  inputs."openapi-3_1_1".owner = "riinr";
  inputs."openapi-3_1_1".repo = "flake-nimble";
  inputs."openapi-3_1_1".ref = "flake-pinning";
  inputs."openapi-3_1_1".dir = "nimpkgs/o/openapi/3_1_1";
  inputs."openapi-3_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_1_2".type = "github";
  inputs."openapi-3_1_2".owner = "riinr";
  inputs."openapi-3_1_2".repo = "flake-nimble";
  inputs."openapi-3_1_2".ref = "flake-pinning";
  inputs."openapi-3_1_2".dir = "nimpkgs/o/openapi/3_1_2";
  inputs."openapi-3_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_1_3".type = "github";
  inputs."openapi-3_1_3".owner = "riinr";
  inputs."openapi-3_1_3".repo = "flake-nimble";
  inputs."openapi-3_1_3".ref = "flake-pinning";
  inputs."openapi-3_1_3".dir = "nimpkgs/o/openapi/3_1_3";
  inputs."openapi-3_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_1_4".type = "github";
  inputs."openapi-3_1_4".owner = "riinr";
  inputs."openapi-3_1_4".repo = "flake-nimble";
  inputs."openapi-3_1_4".ref = "flake-pinning";
  inputs."openapi-3_1_4".dir = "nimpkgs/o/openapi/3_1_4";
  inputs."openapi-3_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_1_5".type = "github";
  inputs."openapi-3_1_5".owner = "riinr";
  inputs."openapi-3_1_5".repo = "flake-nimble";
  inputs."openapi-3_1_5".ref = "flake-pinning";
  inputs."openapi-3_1_5".dir = "nimpkgs/o/openapi/3_1_5";
  inputs."openapi-3_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_1_6".type = "github";
  inputs."openapi-3_1_6".owner = "riinr";
  inputs."openapi-3_1_6".repo = "flake-nimble";
  inputs."openapi-3_1_6".ref = "flake-pinning";
  inputs."openapi-3_1_6".dir = "nimpkgs/o/openapi/3_1_6";
  inputs."openapi-3_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_1_7".type = "github";
  inputs."openapi-3_1_7".owner = "riinr";
  inputs."openapi-3_1_7".repo = "flake-nimble";
  inputs."openapi-3_1_7".ref = "flake-pinning";
  inputs."openapi-3_1_7".dir = "nimpkgs/o/openapi/3_1_7";
  inputs."openapi-3_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_2_0".type = "github";
  inputs."openapi-3_2_0".owner = "riinr";
  inputs."openapi-3_2_0".repo = "flake-nimble";
  inputs."openapi-3_2_0".ref = "flake-pinning";
  inputs."openapi-3_2_0".dir = "nimpkgs/o/openapi/3_2_0";
  inputs."openapi-3_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_2_1".type = "github";
  inputs."openapi-3_2_1".owner = "riinr";
  inputs."openapi-3_2_1".repo = "flake-nimble";
  inputs."openapi-3_2_1".ref = "flake-pinning";
  inputs."openapi-3_2_1".dir = "nimpkgs/o/openapi/3_2_1";
  inputs."openapi-3_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_2_2".type = "github";
  inputs."openapi-3_2_2".owner = "riinr";
  inputs."openapi-3_2_2".repo = "flake-nimble";
  inputs."openapi-3_2_2".ref = "flake-pinning";
  inputs."openapi-3_2_2".dir = "nimpkgs/o/openapi/3_2_2";
  inputs."openapi-3_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_3_0".type = "github";
  inputs."openapi-3_3_0".owner = "riinr";
  inputs."openapi-3_3_0".repo = "flake-nimble";
  inputs."openapi-3_3_0".ref = "flake-pinning";
  inputs."openapi-3_3_0".dir = "nimpkgs/o/openapi/3_3_0";
  inputs."openapi-3_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openapi-3_3_1".type = "github";
  inputs."openapi-3_3_1".owner = "riinr";
  inputs."openapi-3_3_1".repo = "flake-nimble";
  inputs."openapi-3_3_1".ref = "flake-pinning";
  inputs."openapi-3_3_1".dir = "nimpkgs/o/openapi/3_3_1";
  inputs."openapi-3_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}