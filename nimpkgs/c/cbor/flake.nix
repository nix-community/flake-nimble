{
  description = ''
    Concise Binary Object Representation decoder (RFC7049).
  '';
  inputs.src-cbor.url = "https://git.sr.ht/~ehmry/nim_cbor";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
