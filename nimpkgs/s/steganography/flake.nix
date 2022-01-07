{
  description = ''
    Steganography - hide data inside an image.
  '';
  inputs.src-steganography.url = "https://github.com/treeform/steganography";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
