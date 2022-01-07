{
  description = ''
    An Ethereum 2.0 Sharding Client for Resource-Restricted Devices
  '';
  inputs.src-nimbus.url = "https://github.com/status-im/nimbus";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
