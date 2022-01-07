{
  description = ''
    A wrapper for SQLite
  '';
  inputs.src-sqlite3_abi.url = "https://github.com/arnetheduck/nim-sqlite3-abi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
