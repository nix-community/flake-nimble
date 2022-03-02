{
  description = ''Simple AST in NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-simpleAST-1_1_5.flake = false;
  inputs.src-simpleAST-1_1_5.type = "github";
  inputs.src-simpleAST-1_1_5.owner = "lguzzon-NIM";
  inputs.src-simpleAST-1_1_5.repo = "simpleAST";
  inputs.src-simpleAST-1_1_5.ref = "refs/tags/1.1.5";
  inputs.src-simpleAST-1_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleAST-1_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleAST-1_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleAST-1_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}