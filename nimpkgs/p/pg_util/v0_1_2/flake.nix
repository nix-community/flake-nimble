{
  description = ''Postgres utility functions'';
  inputs.src-pg_util-v0_1_2.flake = false;
  inputs.src-pg_util-v0_1_2.type = "github";
  inputs.src-pg_util-v0_1_2.owner = "hiteshjasani";
  inputs.src-pg_util-v0_1_2.repo = "nim-pg-util";
  inputs.src-pg_util-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-pg_util-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pg_util-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pg_util-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}