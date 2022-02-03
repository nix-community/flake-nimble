{
  description = ''prestodb simple connector'';
  inputs.src-db_presto-0_9_5.flake = false;
  inputs.src-db_presto-0_9_5.type = "github";
  inputs.src-db_presto-0_9_5.owner = "Bennyelg";
  inputs.src-db_presto-0_9_5.repo = "nimPresto";
  inputs.src-db_presto-0_9_5.ref = "refs/tags/0.9.5";
  
  outputs = { self, nixpkgs, src-db_presto-0_9_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-0_9_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db_presto-0_9_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}