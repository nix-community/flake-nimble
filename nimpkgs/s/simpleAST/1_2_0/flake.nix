{
  description = ''Simple AST in NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-simpleAST-1_2_0.flake = false;
  inputs.src-simpleAST-1_2_0.type = "github";
  inputs.src-simpleAST-1_2_0.owner = "lguzzon-NIM";
  inputs.src-simpleAST-1_2_0.repo = "simpleAST";
  inputs.src-simpleAST-1_2_0.ref = "refs/tags/1.2.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleAST-1_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleAST-1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleAST-1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}