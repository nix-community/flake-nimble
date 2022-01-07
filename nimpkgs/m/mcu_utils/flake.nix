{
  description = ''
    Utilities and simple helpers for programming with Nim on embedded MCU devices
  '';
  inputs.src-mcu_utils.url = "https://github.com/EmbeddedNim/mcu_utils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
