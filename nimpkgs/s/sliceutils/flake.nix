{
  description = ''
    Utilities for and extensions to Slice/HSlice
  '';
  inputs.src-sliceutils.url = "https://github.com/hlaaftana/sliceutils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
