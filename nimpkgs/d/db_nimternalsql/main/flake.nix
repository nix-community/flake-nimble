{
  description = ''An in-memory SQL database library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-db_nimternalsql-main.flake = false;
  inputs.src-db_nimternalsql-main.type = "github";
  inputs.src-db_nimternalsql-main.owner = "rehartmann";
  inputs.src-db_nimternalsql-main.repo = "nimternalsql";
  inputs.src-db_nimternalsql-main.ref = "refs/heads/main";
  inputs.src-db_nimternalsql-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-db_nimternalsql-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_nimternalsql-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-db_nimternalsql-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}