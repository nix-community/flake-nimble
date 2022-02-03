{
  description = ''Postgres utility functions'';
  inputs.src-pg_util-v0_1_3.flake = false;
  inputs.src-pg_util-v0_1_3.type = "github";
  inputs.src-pg_util-v0_1_3.owner = "hiteshjasani";
  inputs.src-pg_util-v0_1_3.repo = "nim-pg-util";
  inputs.src-pg_util-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-pg_util-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pg_util-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pg_util-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}