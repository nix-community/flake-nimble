{
  description = ''
    A high level SQLite API for Nim
  '';
  inputs.src-sqliteral.url = "https://github.com/olliNiinivaara/SQLiteral";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
