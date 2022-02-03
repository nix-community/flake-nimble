{
  description = ''Simple AST in NIM'';
  inputs.src-simpleAST-1_1_6.flake = false;
  inputs.src-simpleAST-1_1_6.type = "github";
  inputs.src-simpleAST-1_1_6.owner = "lguzzon-NIM";
  inputs.src-simpleAST-1_1_6.repo = "simpleAST";
  inputs.src-simpleAST-1_1_6.ref = "refs/tags/1.1.6";
  
  outputs = { self, nixpkgs, src-simpleAST-1_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleAST-1_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpleAST-1_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}