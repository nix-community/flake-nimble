{
  description = ''
    MQTT wrapper for nim
  '';
  inputs.src-mqtt.url = "https://github.com/barnybug/nim-mqtt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
