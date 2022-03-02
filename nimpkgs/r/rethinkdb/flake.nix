{
  description = ''RethinkDB driver for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rethinkdb-master".type = "github";
  inputs."rethinkdb-master".owner = "riinr";
  inputs."rethinkdb-master".repo = "flake-nimble";
  inputs."rethinkdb-master".ref = "flake-pinning";
  inputs."rethinkdb-master".dir = "nimpkgs/r/rethinkdb/master";
  inputs."rethinkdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_1_0".type = "github";
  inputs."rethinkdb-0_1_0".owner = "riinr";
  inputs."rethinkdb-0_1_0".repo = "flake-nimble";
  inputs."rethinkdb-0_1_0".ref = "flake-pinning";
  inputs."rethinkdb-0_1_0".dir = "nimpkgs/r/rethinkdb/0_1_0";
  inputs."rethinkdb-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_1_1".type = "github";
  inputs."rethinkdb-0_1_1".owner = "riinr";
  inputs."rethinkdb-0_1_1".repo = "flake-nimble";
  inputs."rethinkdb-0_1_1".ref = "flake-pinning";
  inputs."rethinkdb-0_1_1".dir = "nimpkgs/r/rethinkdb/0_1_1";
  inputs."rethinkdb-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_1_2".type = "github";
  inputs."rethinkdb-0_1_2".owner = "riinr";
  inputs."rethinkdb-0_1_2".repo = "flake-nimble";
  inputs."rethinkdb-0_1_2".ref = "flake-pinning";
  inputs."rethinkdb-0_1_2".dir = "nimpkgs/r/rethinkdb/0_1_2";
  inputs."rethinkdb-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_1_3".type = "github";
  inputs."rethinkdb-0_1_3".owner = "riinr";
  inputs."rethinkdb-0_1_3".repo = "flake-nimble";
  inputs."rethinkdb-0_1_3".ref = "flake-pinning";
  inputs."rethinkdb-0_1_3".dir = "nimpkgs/r/rethinkdb/0_1_3";
  inputs."rethinkdb-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_1_4".type = "github";
  inputs."rethinkdb-0_1_4".owner = "riinr";
  inputs."rethinkdb-0_1_4".repo = "flake-nimble";
  inputs."rethinkdb-0_1_4".ref = "flake-pinning";
  inputs."rethinkdb-0_1_4".dir = "nimpkgs/r/rethinkdb/0_1_4";
  inputs."rethinkdb-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_1_5".type = "github";
  inputs."rethinkdb-0_1_5".owner = "riinr";
  inputs."rethinkdb-0_1_5".repo = "flake-nimble";
  inputs."rethinkdb-0_1_5".ref = "flake-pinning";
  inputs."rethinkdb-0_1_5".dir = "nimpkgs/r/rethinkdb/0_1_5";
  inputs."rethinkdb-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_1_6".type = "github";
  inputs."rethinkdb-0_1_6".owner = "riinr";
  inputs."rethinkdb-0_1_6".repo = "flake-nimble";
  inputs."rethinkdb-0_1_6".ref = "flake-pinning";
  inputs."rethinkdb-0_1_6".dir = "nimpkgs/r/rethinkdb/0_1_6";
  inputs."rethinkdb-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_2_0".type = "github";
  inputs."rethinkdb-0_2_0".owner = "riinr";
  inputs."rethinkdb-0_2_0".repo = "flake-nimble";
  inputs."rethinkdb-0_2_0".ref = "flake-pinning";
  inputs."rethinkdb-0_2_0".dir = "nimpkgs/r/rethinkdb/0_2_0";
  inputs."rethinkdb-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_2_3".type = "github";
  inputs."rethinkdb-0_2_3".owner = "riinr";
  inputs."rethinkdb-0_2_3".repo = "flake-nimble";
  inputs."rethinkdb-0_2_3".ref = "flake-pinning";
  inputs."rethinkdb-0_2_3".dir = "nimpkgs/r/rethinkdb/0_2_3";
  inputs."rethinkdb-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_2_3_1".type = "github";
  inputs."rethinkdb-0_2_3_1".owner = "riinr";
  inputs."rethinkdb-0_2_3_1".repo = "flake-nimble";
  inputs."rethinkdb-0_2_3_1".ref = "flake-pinning";
  inputs."rethinkdb-0_2_3_1".dir = "nimpkgs/r/rethinkdb/0_2_3_1";
  inputs."rethinkdb-0_2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_2_3_2".type = "github";
  inputs."rethinkdb-0_2_3_2".owner = "riinr";
  inputs."rethinkdb-0_2_3_2".repo = "flake-nimble";
  inputs."rethinkdb-0_2_3_2".ref = "flake-pinning";
  inputs."rethinkdb-0_2_3_2".dir = "nimpkgs/r/rethinkdb/0_2_3_2";
  inputs."rethinkdb-0_2_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_2_3_3".type = "github";
  inputs."rethinkdb-0_2_3_3".owner = "riinr";
  inputs."rethinkdb-0_2_3_3".repo = "flake-nimble";
  inputs."rethinkdb-0_2_3_3".ref = "flake-pinning";
  inputs."rethinkdb-0_2_3_3".dir = "nimpkgs/r/rethinkdb/0_2_3_3";
  inputs."rethinkdb-0_2_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_2_3_4".type = "github";
  inputs."rethinkdb-0_2_3_4".owner = "riinr";
  inputs."rethinkdb-0_2_3_4".repo = "flake-nimble";
  inputs."rethinkdb-0_2_3_4".ref = "flake-pinning";
  inputs."rethinkdb-0_2_3_4".dir = "nimpkgs/r/rethinkdb/0_2_3_4";
  inputs."rethinkdb-0_2_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_2_3_5".type = "github";
  inputs."rethinkdb-0_2_3_5".owner = "riinr";
  inputs."rethinkdb-0_2_3_5".repo = "flake-nimble";
  inputs."rethinkdb-0_2_3_5".ref = "flake-pinning";
  inputs."rethinkdb-0_2_3_5".dir = "nimpkgs/r/rethinkdb/0_2_3_5";
  inputs."rethinkdb-0_2_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_2_4".type = "github";
  inputs."rethinkdb-0_2_4".owner = "riinr";
  inputs."rethinkdb-0_2_4".repo = "flake-nimble";
  inputs."rethinkdb-0_2_4".ref = "flake-pinning";
  inputs."rethinkdb-0_2_4".dir = "nimpkgs/r/rethinkdb/0_2_4";
  inputs."rethinkdb-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_2_5".type = "github";
  inputs."rethinkdb-0_2_5".owner = "riinr";
  inputs."rethinkdb-0_2_5".repo = "flake-nimble";
  inputs."rethinkdb-0_2_5".ref = "flake-pinning";
  inputs."rethinkdb-0_2_5".dir = "nimpkgs/r/rethinkdb/0_2_5";
  inputs."rethinkdb-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rethinkdb-0_2_6".type = "github";
  inputs."rethinkdb-0_2_6".owner = "riinr";
  inputs."rethinkdb-0_2_6".repo = "flake-nimble";
  inputs."rethinkdb-0_2_6".ref = "flake-pinning";
  inputs."rethinkdb-0_2_6".dir = "nimpkgs/r/rethinkdb/0_2_6";
  inputs."rethinkdb-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}