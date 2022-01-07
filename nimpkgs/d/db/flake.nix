{
  description = ''
    Unified db access module, providing a single library module to access the db_sqlite, db_mysql and db_postgres modules.
  '';
  inputs.src-db.url = "https://github.com/jlp765/db";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
