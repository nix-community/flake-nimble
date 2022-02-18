{
  description = ''Simple AST in NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-simpleast-develop.flake = false;
  inputs.src-simpleast-develop.type = "github";
  inputs.src-simpleast-develop.owner = "lguzzon-NIM";
  inputs.src-simpleast-develop.repo = "simpleAST";
  inputs.src-simpleast-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleast-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleast-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleast-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}