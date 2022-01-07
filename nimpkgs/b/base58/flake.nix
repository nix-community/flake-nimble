{
  description = ''
    Base58 encoders and decoders for Bitcoin and CryptoNote addresses.
  '';
  inputs.src-base58.url = "https://git.sr.ht/~ehmry/nim_base58";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
