{
  description = ''MathExpr - pure-Nim mathematical expression evaluator library'';
  inputs.src-mathexpr-1_2_0.flake = false;
  inputs.src-mathexpr-1_2_0.type = "github";
  inputs.src-mathexpr-1_2_0.owner = "Yardanico";
  inputs.src-mathexpr-1_2_0.repo = "nim-mathexpr";
  inputs.src-mathexpr-1_2_0.ref = "refs/tags/1.2.0";
  
  outputs = { self, nixpkgs, src-mathexpr-1_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mathexpr-1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mathexpr-1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}