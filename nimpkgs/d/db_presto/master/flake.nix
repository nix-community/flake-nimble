{
  description = ''prestodb simple connector'';
  inputs.src-db_presto-master.flake = false;
  inputs.src-db_presto-master.type = "github";
  inputs.src-db_presto-master.owner = "Bennyelg";
  inputs.src-db_presto-master.repo = "nimPresto";
  inputs.src-db_presto-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-db_presto-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db_presto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}