{
  description = ''
    2d collision library for Nim.
  '';
  inputs.src-bumpy.url = "https://github.com/treeform/bumpy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
