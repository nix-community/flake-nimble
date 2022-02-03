{
  description = ''Simple AST in NIM'';
  inputs.src-simpleAST-1_1_3.flake = false;
  inputs.src-simpleAST-1_1_3.type = "github";
  inputs.src-simpleAST-1_1_3.owner = "lguzzon-NIM";
  inputs.src-simpleAST-1_1_3.repo = "simpleAST";
  inputs.src-simpleAST-1_1_3.ref = "refs/tags/1.1.3";
  
  outputs = { self, nixpkgs, src-simpleAST-1_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleAST-1_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpleAST-1_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}