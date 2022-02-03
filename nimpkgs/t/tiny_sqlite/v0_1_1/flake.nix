{
  description = ''A thin SQLite wrapper with proper type safety'';
  inputs.src-tiny_sqlite-v0_1_1.flake = false;
  inputs.src-tiny_sqlite-v0_1_1.type = "github";
  inputs.src-tiny_sqlite-v0_1_1.owner = "GULPF";
  inputs.src-tiny_sqlite-v0_1_1.repo = "tiny_sqlite";
  inputs.src-tiny_sqlite-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-tiny_sqlite-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tiny_sqlite-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tiny_sqlite-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}