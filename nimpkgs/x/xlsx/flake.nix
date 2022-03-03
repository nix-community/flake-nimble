{
  description = ''Read and parse Excel files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xlsx-master".type = "github";
  inputs."xlsx-master".owner = "riinr";
  inputs."xlsx-master".repo = "flake-nimble";
  inputs."xlsx-master".ref = "flake-pinning";
  inputs."xlsx-master".dir = "nimpkgs/x/xlsx/master";
  inputs."xlsx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xlsx-0_4_5".type = "github";
  inputs."xlsx-0_4_5".owner = "riinr";
  inputs."xlsx-0_4_5".repo = "flake-nimble";
  inputs."xlsx-0_4_5".ref = "flake-pinning";
  inputs."xlsx-0_4_5".dir = "nimpkgs/x/xlsx/0_4_5";
  inputs."xlsx-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xlsx-v0_1_0".type = "github";
  inputs."xlsx-v0_1_0".owner = "riinr";
  inputs."xlsx-v0_1_0".repo = "flake-nimble";
  inputs."xlsx-v0_1_0".ref = "flake-pinning";
  inputs."xlsx-v0_1_0".dir = "nimpkgs/x/xlsx/v0_1_0";
  inputs."xlsx-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xlsx-v0_1_2".type = "github";
  inputs."xlsx-v0_1_2".owner = "riinr";
  inputs."xlsx-v0_1_2".repo = "flake-nimble";
  inputs."xlsx-v0_1_2".ref = "flake-pinning";
  inputs."xlsx-v0_1_2".dir = "nimpkgs/x/xlsx/v0_1_2";
  inputs."xlsx-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xlsx-v0_1_6".type = "github";
  inputs."xlsx-v0_1_6".owner = "riinr";
  inputs."xlsx-v0_1_6".repo = "flake-nimble";
  inputs."xlsx-v0_1_6".ref = "flake-pinning";
  inputs."xlsx-v0_1_6".dir = "nimpkgs/x/xlsx/v0_1_6";
  inputs."xlsx-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xlsx-v0_1_8".type = "github";
  inputs."xlsx-v0_1_8".owner = "riinr";
  inputs."xlsx-v0_1_8".repo = "flake-nimble";
  inputs."xlsx-v0_1_8".ref = "flake-pinning";
  inputs."xlsx-v0_1_8".dir = "nimpkgs/x/xlsx/v0_1_8";
  inputs."xlsx-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xlsx-v0_2_0".type = "github";
  inputs."xlsx-v0_2_0".owner = "riinr";
  inputs."xlsx-v0_2_0".repo = "flake-nimble";
  inputs."xlsx-v0_2_0".ref = "flake-pinning";
  inputs."xlsx-v0_2_0".dir = "nimpkgs/x/xlsx/v0_2_0";
  inputs."xlsx-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xlsx-v0_3_0".type = "github";
  inputs."xlsx-v0_3_0".owner = "riinr";
  inputs."xlsx-v0_3_0".repo = "flake-nimble";
  inputs."xlsx-v0_3_0".ref = "flake-pinning";
  inputs."xlsx-v0_3_0".dir = "nimpkgs/x/xlsx/v0_3_0";
  inputs."xlsx-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xlsx-v0_3_2".type = "github";
  inputs."xlsx-v0_3_2".owner = "riinr";
  inputs."xlsx-v0_3_2".repo = "flake-nimble";
  inputs."xlsx-v0_3_2".ref = "flake-pinning";
  inputs."xlsx-v0_3_2".dir = "nimpkgs/x/xlsx/v0_3_2";
  inputs."xlsx-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xlsx-v0_3_6".type = "github";
  inputs."xlsx-v0_3_6".owner = "riinr";
  inputs."xlsx-v0_3_6".repo = "flake-nimble";
  inputs."xlsx-v0_3_6".ref = "flake-pinning";
  inputs."xlsx-v0_3_6".dir = "nimpkgs/x/xlsx/v0_3_6";
  inputs."xlsx-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xlsx-v0_3_8".type = "github";
  inputs."xlsx-v0_3_8".owner = "riinr";
  inputs."xlsx-v0_3_8".repo = "flake-nimble";
  inputs."xlsx-v0_3_8".ref = "flake-pinning";
  inputs."xlsx-v0_3_8".dir = "nimpkgs/x/xlsx/v0_3_8";
  inputs."xlsx-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xlsx-v0_4_0".type = "github";
  inputs."xlsx-v0_4_0".owner = "riinr";
  inputs."xlsx-v0_4_0".repo = "flake-nimble";
  inputs."xlsx-v0_4_0".ref = "flake-pinning";
  inputs."xlsx-v0_4_0".dir = "nimpkgs/x/xlsx/v0_4_0";
  inputs."xlsx-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xlsx-v0_4_2".type = "github";
  inputs."xlsx-v0_4_2".owner = "riinr";
  inputs."xlsx-v0_4_2".repo = "flake-nimble";
  inputs."xlsx-v0_4_2".ref = "flake-pinning";
  inputs."xlsx-v0_4_2".dir = "nimpkgs/x/xlsx/v0_4_2";
  inputs."xlsx-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xlsx-v0_4_4".type = "github";
  inputs."xlsx-v0_4_4".owner = "riinr";
  inputs."xlsx-v0_4_4".repo = "flake-nimble";
  inputs."xlsx-v0_4_4".ref = "flake-pinning";
  inputs."xlsx-v0_4_4".dir = "nimpkgs/x/xlsx/v0_4_4";
  inputs."xlsx-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}