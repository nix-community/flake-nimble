{
  description = ''
    Native MQTT client library
  '';
  inputs.src-nmqtt.url = "https://github.com/zevv/nmqtt";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
