{
  description = ''
    Code coverage CLI + library for Nim using LCOV
  '';
  inputs.src-coco.url = "https://github.com/samuelroy/coco";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
