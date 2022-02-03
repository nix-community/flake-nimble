{
  description = ''Simple AST in NIM'';
  inputs.src-simpleAST-1_1_2.flake = false;
  inputs.src-simpleAST-1_1_2.type = "github";
  inputs.src-simpleAST-1_1_2.owner = "lguzzon-NIM";
  inputs.src-simpleAST-1_1_2.repo = "simpleAST";
  inputs.src-simpleAST-1_1_2.ref = "refs/tags/1.1.2";
  
  outputs = { self, nixpkgs, src-simpleAST-1_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleAST-1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpleAST-1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}