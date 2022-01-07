{
  description = ''
    Definitions of various data structures used in the Ethereum eco-system
  '';
  inputs.src-eth_common.url = "https://github.com/status-im/nim-eth-common";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
