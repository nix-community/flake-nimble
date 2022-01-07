{
  description = ''
    Nim barcode library
  '';
  inputs.src-barcode.url = "https://github.com/bunkford/barcode";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
