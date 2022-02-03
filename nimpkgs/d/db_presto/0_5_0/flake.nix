{
  description = ''prestodb simple connector'';
  inputs.src-db_presto-0_5_0.flake = false;
  inputs.src-db_presto-0_5_0.type = "github";
  inputs.src-db_presto-0_5_0.owner = "Bennyelg";
  inputs.src-db_presto-0_5_0.repo = "nimPresto";
  inputs.src-db_presto-0_5_0.ref = "refs/tags/0.5.0";
  
  outputs = { self, nixpkgs, src-db_presto-0_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-db_presto-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-db_presto-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}