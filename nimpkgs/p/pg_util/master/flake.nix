{
  description = ''Postgres utility functions'';
  inputs.src-pg_util-master.flake = false;
  inputs.src-pg_util-master.type = "github";
  inputs.src-pg_util-master.owner = "hiteshjasani";
  inputs.src-pg_util-master.repo = "nim-pg-util";
  inputs.src-pg_util-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pg_util-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pg_util-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pg_util-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}