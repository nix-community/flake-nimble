{
  description = ''Unified db access module, providing a single library module to access the db_sqlite, db_mysql and db_postgres modules.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-db-1_1_0.flake = false;
  inputs.src-db-1_1_0.type = "github";
  inputs.src-db-1_1_0.owner = "jlp765";
  inputs.src-db-1_1_0.repo = "db";
  inputs.src-db-1_1_0.ref = "refs/tags/1.1.0";
  inputs.src-db-1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-db-1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-db-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}