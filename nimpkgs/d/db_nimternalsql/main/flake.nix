{
  description = ''An in-memory SQL database library'';
  inputs.src-db_nimternalsql-main.flake = false;
  inputs.src-db_nimternalsql-main.type = "github";
  inputs.src-db_nimternalsql-main.owner = "rehartmann";
  inputs.src-db_nimternalsql-main.repo = "nimternalsql";
  inputs.src-db_nimternalsql-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-db_nimternalsql-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_nimternalsql-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db_nimternalsql-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}