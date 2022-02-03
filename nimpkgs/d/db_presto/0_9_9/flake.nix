{
  description = ''prestodb simple connector'';
  inputs.src-db_presto-0_9_9.flake = false;
  inputs.src-db_presto-0_9_9.type = "github";
  inputs.src-db_presto-0_9_9.owner = "Bennyelg";
  inputs.src-db_presto-0_9_9.repo = "nimPresto";
  inputs.src-db_presto-0_9_9.ref = "refs/tags/0.9.9";
  
  outputs = { self, nixpkgs, src-db_presto-0_9_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-0_9_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db_presto-0_9_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}