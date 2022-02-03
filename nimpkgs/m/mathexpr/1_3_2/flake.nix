{
  description = ''MathExpr - pure-Nim mathematical expression evaluator library'';
  inputs.src-mathexpr-1_3_2.flake = false;
  inputs.src-mathexpr-1_3_2.type = "github";
  inputs.src-mathexpr-1_3_2.owner = "Yardanico";
  inputs.src-mathexpr-1_3_2.repo = "nim-mathexpr";
  inputs.src-mathexpr-1_3_2.ref = "refs/tags/1.3.2";
  
  outputs = { self, nixpkgs, src-mathexpr-1_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mathexpr-1_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mathexpr-1_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}