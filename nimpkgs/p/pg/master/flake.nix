{
  description = ''Very simple PostgreSQL async api for nim.'';
  inputs.src-pg-master.flake = false;
  inputs.src-pg-master.type = "github";
  inputs.src-pg-master.owner = "treeform";
  inputs.src-pg-master.repo = "pg";
  inputs.src-pg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pg-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}