{
  description = ''prestodb simple connector'';
  inputs.src-db_presto-0_9_91.flake = false;
  inputs.src-db_presto-0_9_91.type = "github";
  inputs.src-db_presto-0_9_91.owner = "Bennyelg";
  inputs.src-db_presto-0_9_91.repo = "nimPresto";
  inputs.src-db_presto-0_9_91.ref = "refs/tags/0.9.91";
  
  outputs = { self, nixpkgs, src-db_presto-0_9_91, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-0_9_91;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db_presto-0_9_91"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}