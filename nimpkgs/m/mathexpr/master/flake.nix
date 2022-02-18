{
  description = ''MathExpr - pure-Nim mathematical expression evaluator library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mathexpr-master.flake = false;
  inputs.src-mathexpr-master.type = "github";
  inputs.src-mathexpr-master.owner = "Yardanico";
  inputs.src-mathexpr-master.repo = "nim-mathexpr";
  inputs.src-mathexpr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mathexpr-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mathexpr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mathexpr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}