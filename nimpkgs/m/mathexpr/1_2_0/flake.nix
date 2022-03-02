{
  description = ''MathExpr - pure-Nim mathematical expression evaluator library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-mathexpr-1_2_0.flake = false;
  inputs.src-mathexpr-1_2_0.type = "github";
  inputs.src-mathexpr-1_2_0.owner = "Yardanico";
  inputs.src-mathexpr-1_2_0.repo = "nim-mathexpr";
  inputs.src-mathexpr-1_2_0.ref = "refs/tags/1.2.0";
  inputs.src-mathexpr-1_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mathexpr-1_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mathexpr-1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mathexpr-1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}