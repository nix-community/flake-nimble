{
  description = ''
    Image transformation and visualization utilities for arraymancer
  '';
  inputs.src-arraymancer_vision.url = "https://github.com/edubart/arraymancer-vision";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
