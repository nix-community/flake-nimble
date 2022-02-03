{
  description = ''Unified db access module, providing a single library module to access the db_sqlite, db_mysql and db_postgres modules.'';
  inputs.src-db-master.flake = false;
  inputs.src-db-master.type = "github";
  inputs.src-db-master.owner = "jlp765";
  inputs.src-db-master.repo = "db";
  inputs.src-db-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-db-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}