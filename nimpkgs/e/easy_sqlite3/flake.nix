{
  description = ''
    Yet another SQLite wrapper for Nim.
  '';
  inputs.src-easy_sqlite3.url = "https://github.com/codehz/easy_sqlite3";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
