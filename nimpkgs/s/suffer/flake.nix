{
  description = ''
    a nim library for drawing 2d shapes, text, and images to 32bit software pixel buffers
  '';
  inputs.src-suffer.url = "https://github.com/emekoi/suffer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
