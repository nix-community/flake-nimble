{
  description = ''Simple AST in NIM'';
  inputs.src-simpleAST-1_1_0.flake = false;
  inputs.src-simpleAST-1_1_0.type = "github";
  inputs.src-simpleAST-1_1_0.owner = "lguzzon-NIM";
  inputs.src-simpleAST-1_1_0.repo = "simpleAST";
  inputs.src-simpleAST-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, src-simpleAST-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleAST-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpleAST-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}