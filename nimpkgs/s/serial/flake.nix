{
  description = ''
    A library to operate serial ports using pure Nim.
  '';
  inputs.src-serial.url = "https://github.com/euantorano/serial.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
