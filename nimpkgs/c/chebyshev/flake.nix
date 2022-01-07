{
  description = ''
    Chebyshev approximation.
  '';
  inputs.src-chebyshev.url = "https://github.com/jxy/chebyshev";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
