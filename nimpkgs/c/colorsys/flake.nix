{
  description = ''
    Convert between RGB, YIQ, HLS, and HSV color systems.
  '';
  inputs.src-colorsys.url = "https://github.com/achesak/nim-colorsys";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
