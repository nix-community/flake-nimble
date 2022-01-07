{
  description = ''
    Ethereum bloom filter (deprecated, now part of the 'eth' package)
  '';
  inputs.src-eth_bloom.url = "https://github.com/status-im/nim-eth-bloom";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
