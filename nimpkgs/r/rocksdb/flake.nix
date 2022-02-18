{
  description = ''A wrapper for Facebook's RocksDB, an embeddable, persistent key-value store for fast storage'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."rocksdb-master".type = "github";
  inputs."rocksdb-master".owner = "riinr";
  inputs."rocksdb-master".repo = "flake-nimble";
  inputs."rocksdb-master".ref = "flake-pinning";
  inputs."rocksdb-master".dir = "nimpkgs/r/rocksdb/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}