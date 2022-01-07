{
  description = ''
    Consistent Overhead Byte Stuffing for Nim
  '';
  inputs.src-cobs.url = "https://github.com/keyme/nim_cobs";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
