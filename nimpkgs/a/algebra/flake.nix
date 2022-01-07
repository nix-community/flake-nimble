{
  description = ''
    Algebraic expression parser and evaluator
  '';
  inputs.src-algebra.url = "https://github.com/ijneb/nim-algebra";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
