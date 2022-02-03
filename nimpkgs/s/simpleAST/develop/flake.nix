{
  description = ''Simple AST in NIM'';
  inputs.src-simpleAST-develop.flake = false;
  inputs.src-simpleAST-develop.type = "github";
  inputs.src-simpleAST-develop.owner = "lguzzon-NIM";
  inputs.src-simpleAST-develop.repo = "simpleAST";
  inputs.src-simpleAST-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-simpleAST-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleAST-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpleAST-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}