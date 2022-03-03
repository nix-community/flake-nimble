{
  description = ''A wrapper for Facebook's RocksDB, an embeddable, persistent key-value store for fast storage'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rocksdb-master".type = "github";
  inputs."rocksdb-master".owner = "riinr";
  inputs."rocksdb-master".repo = "flake-nimble";
  inputs."rocksdb-master".ref = "flake-pinning";
  inputs."rocksdb-master".dir = "nimpkgs/r/rocksdb/master";
  inputs."rocksdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rocksdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}