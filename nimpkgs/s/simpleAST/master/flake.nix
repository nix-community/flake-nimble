{
  description = ''Simple AST in NIM'';
  inputs.src-simpleAST-master.flake = false;
  inputs.src-simpleAST-master.type = "github";
  inputs.src-simpleAST-master.owner = "lguzzon-NIM";
  inputs.src-simpleAST-master.repo = "simpleAST";
  inputs.src-simpleAST-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-simpleAST-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleAST-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-simpleAST-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}