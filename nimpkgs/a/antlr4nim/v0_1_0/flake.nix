{
  description = ''Nim interface to ANTLR4 listener/visitor via jsffi'';
  inputs.src-antlr4nim-v0_1_0.flake = false;
  inputs.src-antlr4nim-v0_1_0.type = "github";
  inputs.src-antlr4nim-v0_1_0.owner = "jan0sc";
  inputs.src-antlr4nim-v0_1_0.repo = "antlr4nim";
  inputs.src-antlr4nim-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-antlr4nim-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-antlr4nim-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-antlr4nim-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}