{
  description = ''
    Useful utilities for manipulating and visualizing byte blobs
  '';
  inputs.src-byteutils.url = "https://github.com/status-im/nim-byteutils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
