{
  description = ''prestodb simple connector'';
  inputs.src-db_presto-1_0_11.flake = false;
  inputs.src-db_presto-1_0_11.type = "github";
  inputs.src-db_presto-1_0_11.owner = "Bennyelg";
  inputs.src-db_presto-1_0_11.repo = "nimPresto";
  inputs.src-db_presto-1_0_11.ref = "refs/tags/1.0.11";
  
  outputs = { self, nixpkgs, src-db_presto-1_0_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-1_0_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db_presto-1_0_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}