{
  description = ''
    Nim wrapper for the libpng library
  '';
  inputs.src-png.url = "https://github.com/barcharcraz/nimlibpng";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
