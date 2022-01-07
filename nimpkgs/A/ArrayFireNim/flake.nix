{
  description = ''
    A nim wrapper for ArrayFire
  '';
  inputs.src-ArrayFireNim.url = "https://github.com/bitstormGER/ArrayFire-Nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
