{
  description = ''MathExpr - pure-Nim mathematical expression evaluator library'';
  inputs.src-mathexpr-1_3_1.flake = false;
  inputs.src-mathexpr-1_3_1.type = "github";
  inputs.src-mathexpr-1_3_1.owner = "Yardanico";
  inputs.src-mathexpr-1_3_1.repo = "nim-mathexpr";
  inputs.src-mathexpr-1_3_1.ref = "refs/tags/1.3.1";
  
  outputs = { self, nixpkgs, src-mathexpr-1_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mathexpr-1_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mathexpr-1_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}