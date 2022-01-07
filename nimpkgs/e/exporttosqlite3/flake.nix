{
  description = ''
    Export Nim functions to sqlite3
  '';
  inputs.src-exporttosqlite3.url = "https://github.com/niklaskorz/nim-exporttosqlite3";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
