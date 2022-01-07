{
  description = ''
    A wrapper for the libsecp256k1 C library
  '';
  inputs.src-secp256k1.url = "https://github.com/status-im/nim-secp256k1";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
