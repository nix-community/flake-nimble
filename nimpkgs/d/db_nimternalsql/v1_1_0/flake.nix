{
  description = ''An in-memory SQL database library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-db_nimternalsql-v1_1_0.flake = false;
  inputs.src-db_nimternalsql-v1_1_0.type = "github";
  inputs.src-db_nimternalsql-v1_1_0.owner = "rehartmann";
  inputs.src-db_nimternalsql-v1_1_0.repo = "nimternalsql";
  inputs.src-db_nimternalsql-v1_1_0.ref = "refs/tags/v1.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-db_nimternalsql-v1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_nimternalsql-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-db_nimternalsql-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}