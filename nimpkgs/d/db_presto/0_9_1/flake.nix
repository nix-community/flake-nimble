{
  description = ''prestodb simple connector'';
  inputs.src-db_presto-0_9_1.flake = false;
  inputs.src-db_presto-0_9_1.type = "github";
  inputs.src-db_presto-0_9_1.owner = "Bennyelg";
  inputs.src-db_presto-0_9_1.repo = "nimPresto";
  inputs.src-db_presto-0_9_1.ref = "refs/tags/0.9.1";
  
  outputs = { self, nixpkgs, src-db_presto-0_9_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-0_9_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db_presto-0_9_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}