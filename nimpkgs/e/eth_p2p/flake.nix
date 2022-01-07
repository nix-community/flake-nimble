{
  description = ''
    Deprecated implementation of the Ethereum suite of P2P protocols (now part of the 'eth' package)
  '';
  inputs.src-eth_p2p.url = "https://github.com/status-im/nim-eth-p2p";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
