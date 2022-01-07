{
  description = ''
    A deprecated library for handling Ethereum private keys and wallets (now part of the 'eth' package)
  '';
  inputs.src-eth_keyfile.url = "https://github.com/status-im/nim-eth-keyfile";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
