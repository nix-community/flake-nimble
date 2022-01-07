{
  description = ''
    A wrapper for the The Ethereum EVMC library
  '';
  inputs.src-evmc.url = "https://github.com/status-im/nim-evmc";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
