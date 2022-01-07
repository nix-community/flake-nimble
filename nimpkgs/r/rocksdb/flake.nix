{
  description = ''
    A wrapper for Facebook's RocksDB, an embeddable, persistent key-value store for fast storage
  '';
  inputs.src-rocksdb.url = "https://github.com/status-im/nim-rocksdb";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
