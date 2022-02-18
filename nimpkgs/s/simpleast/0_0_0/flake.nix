{
  description = ''Simple AST in NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-simpleast-0_0_0.flake = false;
  inputs.src-simpleast-0_0_0.type = "github";
  inputs.src-simpleast-0_0_0.owner = "lguzzon-NIM";
  inputs.src-simpleast-0_0_0.repo = "simpleAST";
  inputs.src-simpleast-0_0_0.ref = "refs/tags/0.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleast-0_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleast-0_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleast-0_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}