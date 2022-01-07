{
  description = ''
    Wrapper for the FreeImage library
  '';
  inputs.src-freeimage.url = "https://github.com/barcharcraz/nim-freeimage";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
