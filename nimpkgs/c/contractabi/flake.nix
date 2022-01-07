{
  description = ''
    ABI Encoding for Ethereum contracts
  '';
  inputs.src-contractabi.url = "https://github.com/status-im/nim-contract-abi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
