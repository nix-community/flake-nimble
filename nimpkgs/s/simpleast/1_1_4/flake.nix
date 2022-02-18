{
  description = ''Simple AST in NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-simpleast-1_1_4.flake = false;
  inputs.src-simpleast-1_1_4.type = "github";
  inputs.src-simpleast-1_1_4.owner = "lguzzon-NIM";
  inputs.src-simpleast-1_1_4.repo = "simpleAST";
  inputs.src-simpleast-1_1_4.ref = "refs/tags/1.1.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleast-1_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleast-1_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleast-1_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}