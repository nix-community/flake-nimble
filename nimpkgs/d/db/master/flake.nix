{
  description = ''Unified db access module, providing a single library module to access the db_sqlite, db_mysql and db_postgres modules.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-db-master.flake = false;
  inputs.src-db-master.type = "github";
  inputs.src-db-master.owner = "jlp765";
  inputs.src-db-master.repo = "db";
  inputs.src-db-master.ref = "refs/heads/master";
  inputs.src-db-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-db-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-db-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}