{
  description = ''
    Deprecated RLP serialization library for Nim (now part of the 'eth' module)
  '';
  inputs.src-rlp.url = "https://github.com/status-im/nim-rlp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
