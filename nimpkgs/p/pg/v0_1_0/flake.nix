{
  description = ''Very simple PostgreSQL async api for nim.'';
  inputs.src-pg-v0_1_0.flake = false;
  inputs.src-pg-v0_1_0.type = "github";
  inputs.src-pg-v0_1_0.owner = "treeform";
  inputs.src-pg-v0_1_0.repo = "pg";
  inputs.src-pg-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-pg-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pg-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pg-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}