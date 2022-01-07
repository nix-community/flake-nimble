{
  description = ''
    A collection of Ethereum related libraries
  '';
  inputs.src-eth.url = "https://github.com/status-im/nim-eth";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
