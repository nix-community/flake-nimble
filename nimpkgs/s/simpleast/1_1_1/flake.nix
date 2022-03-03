{
  description = ''Simple AST in NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-simpleAST-1_1_1.flake = false;
  inputs.src-simpleAST-1_1_1.type = "github";
  inputs.src-simpleAST-1_1_1.owner = "lguzzon-NIM";
  inputs.src-simpleAST-1_1_1.repo = "simpleAST";
  inputs.src-simpleAST-1_1_1.ref = "refs/tags/1.1.1";
  inputs.src-simpleAST-1_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleAST-1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleAST-1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleAST-1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}