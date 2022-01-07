{
  description = ''
    LevelDB bindings
  '';
  inputs.src-leveldb.url = "https://github.com/zielmicha/leveldb.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
