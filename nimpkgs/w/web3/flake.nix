{
  description = ''
    Ethereum Web3 API
  '';
  inputs.src-web3.url = "https://github.com/status-im/nim-web3";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
