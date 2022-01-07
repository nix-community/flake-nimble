{
  description = ''
    Arduino bindings for Nim
  '';
  inputs.src-arduino.url = "https://github.com/markspanbroek/nim-arduino";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
