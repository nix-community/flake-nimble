{
  description = ''Simpleflake for nim'';
  inputs.src-simpleflake-v0_1_0.flake = false;
  inputs.src-simpleflake-v0_1_0.type = "github";
  inputs.src-simpleflake-v0_1_0.owner = "aisk";
  inputs.src-simpleflake-v0_1_0.repo = "simpleflake.nim";
  inputs.src-simpleflake-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-simpleflake-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleflake-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpleflake-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}