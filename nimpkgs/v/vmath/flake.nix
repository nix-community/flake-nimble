{
  description = ''
    Collection of math routines for 2d and 3d graphics.
  '';
  inputs.src-vmath.url = "https://github.com/treeform/vmath";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
