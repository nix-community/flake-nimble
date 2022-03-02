{
  description = ''Unified db access module, providing a single library module to access the db_sqlite, db_mysql and db_postgres modules.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."db-master".type = "github";
  inputs."db-master".owner = "riinr";
  inputs."db-master".repo = "flake-nimble";
  inputs."db-master".ref = "flake-pinning";
  inputs."db-master".dir = "nimpkgs/d/db/master";
  inputs."db-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db-1_1_0".type = "github";
  inputs."db-1_1_0".owner = "riinr";
  inputs."db-1_1_0".repo = "flake-nimble";
  inputs."db-1_1_0".ref = "flake-pinning";
  inputs."db-1_1_0".dir = "nimpkgs/d/db/1_1_0";
  inputs."db-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}