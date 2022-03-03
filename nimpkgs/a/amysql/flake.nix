{
  description = ''Async MySQL Connector write in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."amysql-master".type = "github";
  inputs."amysql-master".owner = "riinr";
  inputs."amysql-master".repo = "flake-nimble";
  inputs."amysql-master".ref = "flake-pinning";
  inputs."amysql-master".dir = "nimpkgs/a/amysql/master";
  inputs."amysql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."amysql-v0_1_0".type = "github";
  inputs."amysql-v0_1_0".owner = "riinr";
  inputs."amysql-v0_1_0".repo = "flake-nimble";
  inputs."amysql-v0_1_0".ref = "flake-pinning";
  inputs."amysql-v0_1_0".dir = "nimpkgs/a/amysql/v0_1_0";
  inputs."amysql-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."amysql-v0_6_0".type = "github";
  inputs."amysql-v0_6_0".owner = "riinr";
  inputs."amysql-v0_6_0".repo = "flake-nimble";
  inputs."amysql-v0_6_0".ref = "flake-pinning";
  inputs."amysql-v0_6_0".dir = "nimpkgs/a/amysql/v0_6_0";
  inputs."amysql-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."amysql-v0_6_1".type = "github";
  inputs."amysql-v0_6_1".owner = "riinr";
  inputs."amysql-v0_6_1".repo = "flake-nimble";
  inputs."amysql-v0_6_1".ref = "flake-pinning";
  inputs."amysql-v0_6_1".dir = "nimpkgs/a/amysql/v0_6_1";
  inputs."amysql-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."amysql-v0_7_0".type = "github";
  inputs."amysql-v0_7_0".owner = "riinr";
  inputs."amysql-v0_7_0".repo = "flake-nimble";
  inputs."amysql-v0_7_0".ref = "flake-pinning";
  inputs."amysql-v0_7_0".dir = "nimpkgs/a/amysql/v0_7_0";
  inputs."amysql-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."amysql-v0_7_1".type = "github";
  inputs."amysql-v0_7_1".owner = "riinr";
  inputs."amysql-v0_7_1".repo = "flake-nimble";
  inputs."amysql-v0_7_1".ref = "flake-pinning";
  inputs."amysql-v0_7_1".dir = "nimpkgs/a/amysql/v0_7_1";
  inputs."amysql-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."amysql-v0_7_2".type = "github";
  inputs."amysql-v0_7_2".owner = "riinr";
  inputs."amysql-v0_7_2".repo = "flake-nimble";
  inputs."amysql-v0_7_2".ref = "flake-pinning";
  inputs."amysql-v0_7_2".dir = "nimpkgs/a/amysql/v0_7_2";
  inputs."amysql-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."amysql-v0_7_3".type = "github";
  inputs."amysql-v0_7_3".owner = "riinr";
  inputs."amysql-v0_7_3".repo = "flake-nimble";
  inputs."amysql-v0_7_3".ref = "flake-pinning";
  inputs."amysql-v0_7_3".dir = "nimpkgs/a/amysql/v0_7_3";
  inputs."amysql-v0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."amysql-v0_7_4".type = "github";
  inputs."amysql-v0_7_4".owner = "riinr";
  inputs."amysql-v0_7_4".repo = "flake-nimble";
  inputs."amysql-v0_7_4".ref = "flake-pinning";
  inputs."amysql-v0_7_4".dir = "nimpkgs/a/amysql/v0_7_4";
  inputs."amysql-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."amysql-v0_7_5".type = "github";
  inputs."amysql-v0_7_5".owner = "riinr";
  inputs."amysql-v0_7_5".repo = "flake-nimble";
  inputs."amysql-v0_7_5".ref = "flake-pinning";
  inputs."amysql-v0_7_5".dir = "nimpkgs/a/amysql/v0_7_5";
  inputs."amysql-v0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."amysql-v0_7_6".type = "github";
  inputs."amysql-v0_7_6".owner = "riinr";
  inputs."amysql-v0_7_6".repo = "flake-nimble";
  inputs."amysql-v0_7_6".ref = "flake-pinning";
  inputs."amysql-v0_7_6".dir = "nimpkgs/a/amysql/v0_7_6";
  inputs."amysql-v0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}