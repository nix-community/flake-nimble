{
  description = ''A wrapper for Facebook's RocksDB, an embeddable, persistent key-value store for fast storage'';
  inputs.src-rocksdb-master.flake = false;
  inputs.src-rocksdb-master.type = "github";
  inputs.src-rocksdb-master.owner = "status-im";
  inputs.src-rocksdb-master.repo = "nim-rocksdb";
  inputs.src-rocksdb-master.ref = "refs/heads/master";
  
  
  inputs."stew".url = "path:../../../s/stew";
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  
  inputs."tempfile".url = "path:../../../t/tempfile";
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  outputs = { self, nixpkgs, src-rocksdb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rocksdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rocksdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}