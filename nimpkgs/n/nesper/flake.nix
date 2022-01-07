{
  description = ''
    Nim wrappers for ESP-IDF (ESP32)
  '';
  inputs.src-nesper.url = "https://github.com/elcritch/nesper";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
