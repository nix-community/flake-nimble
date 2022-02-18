{
  description = ''Simple AST in NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-simpleast-1_1_6.flake = false;
  inputs.src-simpleast-1_1_6.type = "github";
  inputs.src-simpleast-1_1_6.owner = "lguzzon-NIM";
  inputs.src-simpleast-1_1_6.repo = "simpleAST";
  inputs.src-simpleast-1_1_6.ref = "refs/tags/1.1.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleast-1_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleast-1_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleast-1_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}