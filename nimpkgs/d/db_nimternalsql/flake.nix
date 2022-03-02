{
  description = ''An in-memory SQL database library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."db_nimternalsql-main".type = "github";
  inputs."db_nimternalsql-main".owner = "riinr";
  inputs."db_nimternalsql-main".repo = "flake-nimble";
  inputs."db_nimternalsql-main".ref = "flake-pinning";
  inputs."db_nimternalsql-main".dir = "nimpkgs/d/db_nimternalsql/main";
  inputs."db_nimternalsql-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_nimternalsql-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_nimternalsql-v1_0_0".type = "github";
  inputs."db_nimternalsql-v1_0_0".owner = "riinr";
  inputs."db_nimternalsql-v1_0_0".repo = "flake-nimble";
  inputs."db_nimternalsql-v1_0_0".ref = "flake-pinning";
  inputs."db_nimternalsql-v1_0_0".dir = "nimpkgs/d/db_nimternalsql/v1_0_0";
  inputs."db_nimternalsql-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_nimternalsql-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_nimternalsql-v1_1_0".type = "github";
  inputs."db_nimternalsql-v1_1_0".owner = "riinr";
  inputs."db_nimternalsql-v1_1_0".repo = "flake-nimble";
  inputs."db_nimternalsql-v1_1_0".ref = "flake-pinning";
  inputs."db_nimternalsql-v1_1_0".dir = "nimpkgs/d/db_nimternalsql/v1_1_0";
  inputs."db_nimternalsql-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_nimternalsql-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}