{
  description = ''
    Interpolation routines for data and animation.
  '';
  inputs.src-skinterpolate.url = "https://github.com/Skrylar/skInterpolate";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
