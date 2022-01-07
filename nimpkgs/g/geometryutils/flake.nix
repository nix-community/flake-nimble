{
  description = ''
    A collection of geometry utilities for nim
  '';
  inputs.src-geometryutils.url = "https://github.com/pseudo-random/geometryutils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
