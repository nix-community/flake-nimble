{
  description = ''Simple AST in NIM'';
  inputs.src-simpleAST-1_1_5.flake = false;
  inputs.src-simpleAST-1_1_5.type = "github";
  inputs.src-simpleAST-1_1_5.owner = "lguzzon-NIM";
  inputs.src-simpleAST-1_1_5.repo = "simpleAST";
  inputs.src-simpleAST-1_1_5.ref = "refs/tags/1.1.5";
  
  outputs = { self, nixpkgs, src-simpleAST-1_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleAST-1_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpleAST-1_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}