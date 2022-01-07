{
  description = ''
    Nim Barreto-Naehrig pairing-friendly elliptic curve implementation
  '';
  inputs.src-bncurve.url = "https://github.com/status-im/nim-bncurve";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
