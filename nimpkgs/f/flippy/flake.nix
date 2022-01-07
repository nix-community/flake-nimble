{
  description = ''
    Flippy is a simple 2d image and drawing library.
  '';
  inputs.src-flippy.url = "https://github.com/treeform/flippy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
