{
  description = ''
    A wrapper for the cMPFIT non-linear least squares fitting library
  '';
  inputs.src-mpfit.url = "https://github.com/Vindaar/nim-mpfit";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
