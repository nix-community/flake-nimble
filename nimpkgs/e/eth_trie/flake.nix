{
  description = ''
    Merkle Patricia Tries as specified by Ethereum (deprecated, now part of the 'eth' package)
  '';
  inputs.src-eth_trie.url = "https://github.com/status-im/nim-eth-trie";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
