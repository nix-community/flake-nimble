{
  description = ''prestodb simple connector'';
  inputs.src-db_presto-0_9_8.flake = false;
  inputs.src-db_presto-0_9_8.type = "github";
  inputs.src-db_presto-0_9_8.owner = "Bennyelg";
  inputs.src-db_presto-0_9_8.repo = "nimPresto";
  inputs.src-db_presto-0_9_8.ref = "refs/tags/0.9.8";
  
  outputs = { self, nixpkgs, src-db_presto-0_9_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-0_9_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db_presto-0_9_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}