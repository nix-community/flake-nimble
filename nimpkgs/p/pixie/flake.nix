{
  description = ''
    Full-featured 2d graphics library for Nim.
  '';
  inputs.src-pixie.url = "https://github.com/treeform/pixie";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
