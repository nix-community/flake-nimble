{
  description = ''
    lib for ppm image
  '';
  inputs.src-PPM.url = "https://github.com/LemonHX/PPM-Nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
