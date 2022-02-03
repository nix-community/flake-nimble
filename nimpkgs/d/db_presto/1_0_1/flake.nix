{
  description = ''prestodb simple connector'';
  inputs.src-db_presto-1_0_1.flake = false;
  inputs.src-db_presto-1_0_1.type = "github";
  inputs.src-db_presto-1_0_1.owner = "Bennyelg";
  inputs.src-db_presto-1_0_1.repo = "nimPresto";
  inputs.src-db_presto-1_0_1.ref = "refs/tags/1.0.1";
  
  outputs = { self, nixpkgs, src-db_presto-1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db_presto-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}