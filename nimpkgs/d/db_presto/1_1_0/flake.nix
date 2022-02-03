{
  description = ''prestodb simple connector'';
  inputs.src-db_presto-1_1_0.flake = false;
  inputs.src-db_presto-1_1_0.type = "github";
  inputs.src-db_presto-1_1_0.owner = "Bennyelg";
  inputs.src-db_presto-1_1_0.repo = "nimPresto";
  inputs.src-db_presto-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, src-db_presto-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db_presto-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}