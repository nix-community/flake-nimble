{
  description = ''
    A wrapper for the non-linear optimization C library Nlopt
  '';
  inputs.src-nlopt.url = "https://github.com/Vindaar/nimnlopt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
