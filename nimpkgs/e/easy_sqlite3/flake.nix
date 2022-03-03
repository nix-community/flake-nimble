{
  description = ''Yet another SQLite wrapper for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."easy_sqlite3-develop".type = "github";
  inputs."easy_sqlite3-develop".owner = "riinr";
  inputs."easy_sqlite3-develop".repo = "flake-nimble";
  inputs."easy_sqlite3-develop".ref = "flake-pinning";
  inputs."easy_sqlite3-develop".dir = "nimpkgs/e/easy_sqlite3/develop";
  inputs."easy_sqlite3-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_sqlite3-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."easy_sqlite3-v0_1_0".type = "github";
  inputs."easy_sqlite3-v0_1_0".owner = "riinr";
  inputs."easy_sqlite3-v0_1_0".repo = "flake-nimble";
  inputs."easy_sqlite3-v0_1_0".ref = "flake-pinning";
  inputs."easy_sqlite3-v0_1_0".dir = "nimpkgs/e/easy_sqlite3/v0_1_0";
  inputs."easy_sqlite3-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_sqlite3-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."easy_sqlite3-v0_1_1".type = "github";
  inputs."easy_sqlite3-v0_1_1".owner = "riinr";
  inputs."easy_sqlite3-v0_1_1".repo = "flake-nimble";
  inputs."easy_sqlite3-v0_1_1".ref = "flake-pinning";
  inputs."easy_sqlite3-v0_1_1".dir = "nimpkgs/e/easy_sqlite3/v0_1_1";
  inputs."easy_sqlite3-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_sqlite3-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."easy_sqlite3-v0_1_2".type = "github";
  inputs."easy_sqlite3-v0_1_2".owner = "riinr";
  inputs."easy_sqlite3-v0_1_2".repo = "flake-nimble";
  inputs."easy_sqlite3-v0_1_2".ref = "flake-pinning";
  inputs."easy_sqlite3-v0_1_2".dir = "nimpkgs/e/easy_sqlite3/v0_1_2";
  inputs."easy_sqlite3-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_sqlite3-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."easy_sqlite3-v0_1_3".type = "github";
  inputs."easy_sqlite3-v0_1_3".owner = "riinr";
  inputs."easy_sqlite3-v0_1_3".repo = "flake-nimble";
  inputs."easy_sqlite3-v0_1_3".ref = "flake-pinning";
  inputs."easy_sqlite3-v0_1_3".dir = "nimpkgs/e/easy_sqlite3/v0_1_3";
  inputs."easy_sqlite3-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_sqlite3-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."easy_sqlite3-v0_1_4".type = "github";
  inputs."easy_sqlite3-v0_1_4".owner = "riinr";
  inputs."easy_sqlite3-v0_1_4".repo = "flake-nimble";
  inputs."easy_sqlite3-v0_1_4".ref = "flake-pinning";
  inputs."easy_sqlite3-v0_1_4".dir = "nimpkgs/e/easy_sqlite3/v0_1_4";
  inputs."easy_sqlite3-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_sqlite3-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}