{
  description = ''Simple AST in NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-simpleast-1_1_5.flake = false;
  inputs.src-simpleast-1_1_5.type = "github";
  inputs.src-simpleast-1_1_5.owner = "lguzzon-NIM";
  inputs.src-simpleast-1_1_5.repo = "simpleAST";
  inputs.src-simpleast-1_1_5.ref = "refs/tags/1.1.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleast-1_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleast-1_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleast-1_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}