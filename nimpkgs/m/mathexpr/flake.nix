{
  description = ''
    MathExpr - pure-Nim mathematical expression evaluator library
  '';
  inputs.src-mathexpr.url = "https://github.com/Yardanico/nim-mathexpr";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
