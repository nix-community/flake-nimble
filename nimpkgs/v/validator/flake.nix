{
  description = ''
    Functions for string validation
  '';
  inputs.src-validator.url = "https://github.com/Adeohluwa/validator";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
