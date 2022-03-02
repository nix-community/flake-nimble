{
  description = ''Simple AST in NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-simpleAST-develop.flake = false;
  inputs.src-simpleAST-develop.type = "github";
  inputs.src-simpleAST-develop.owner = "lguzzon-NIM";
  inputs.src-simpleAST-develop.repo = "simpleAST";
  inputs.src-simpleAST-develop.ref = "refs/heads/develop";
  inputs.src-simpleAST-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleAST-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleAST-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleAST-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}