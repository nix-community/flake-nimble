{
  description = ''LevelDB bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."leveldb-master".type = "github";
  inputs."leveldb-master".owner = "riinr";
  inputs."leveldb-master".repo = "flake-nimble";
  inputs."leveldb-master".ref = "flake-pinning";
  inputs."leveldb-master".dir = "nimpkgs/l/leveldb/master";
  inputs."leveldb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."leveldb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."leveldb-0_2_0".type = "github";
  inputs."leveldb-0_2_0".owner = "riinr";
  inputs."leveldb-0_2_0".repo = "flake-nimble";
  inputs."leveldb-0_2_0".ref = "flake-pinning";
  inputs."leveldb-0_2_0".dir = "nimpkgs/l/leveldb/0_2_0";
  inputs."leveldb-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."leveldb-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."leveldb-0_3_0".type = "github";
  inputs."leveldb-0_3_0".owner = "riinr";
  inputs."leveldb-0_3_0".repo = "flake-nimble";
  inputs."leveldb-0_3_0".ref = "flake-pinning";
  inputs."leveldb-0_3_0".dir = "nimpkgs/l/leveldb/0_3_0";
  inputs."leveldb-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."leveldb-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."leveldb-0_4_0".type = "github";
  inputs."leveldb-0_4_0".owner = "riinr";
  inputs."leveldb-0_4_0".repo = "flake-nimble";
  inputs."leveldb-0_4_0".ref = "flake-pinning";
  inputs."leveldb-0_4_0".dir = "nimpkgs/l/leveldb/0_4_0";
  inputs."leveldb-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."leveldb-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."leveldb-0_4_1".type = "github";
  inputs."leveldb-0_4_1".owner = "riinr";
  inputs."leveldb-0_4_1".repo = "flake-nimble";
  inputs."leveldb-0_4_1".ref = "flake-pinning";
  inputs."leveldb-0_4_1".dir = "nimpkgs/l/leveldb/0_4_1";
  inputs."leveldb-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."leveldb-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}