{
  description = ''Simple AST in NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-simpleAST-master.flake = false;
  inputs.src-simpleAST-master.type = "github";
  inputs.src-simpleAST-master.owner = "lguzzon-NIM";
  inputs.src-simpleAST-master.repo = "simpleAST";
  inputs.src-simpleAST-master.ref = "refs/heads/master";
  inputs.src-simpleAST-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleAST-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleAST-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleAST-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}