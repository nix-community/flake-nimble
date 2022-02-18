{
  description = ''Simple AST in NIM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-simpleast-master.flake = false;
  inputs.src-simpleast-master.type = "github";
  inputs.src-simpleast-master.owner = "lguzzon-NIM";
  inputs.src-simpleast-master.repo = "simpleAST";
  inputs.src-simpleast-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleast-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleast-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleast-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}