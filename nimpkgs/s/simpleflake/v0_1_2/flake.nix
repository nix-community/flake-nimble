{
  description = ''Simpleflake for nim'';
  inputs.src-simpleflake-v0_1_2.flake = false;
  inputs.src-simpleflake-v0_1_2.type = "github";
  inputs.src-simpleflake-v0_1_2.owner = "aisk";
  inputs.src-simpleflake-v0_1_2.repo = "simpleflake.nim";
  inputs.src-simpleflake-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-simpleflake-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleflake-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpleflake-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}