{
  description = ''
    Generalized linear models in Nim.
  '';
  inputs.src-linear_models.url = "https://github.com/ayman-albaz/linear-models";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
