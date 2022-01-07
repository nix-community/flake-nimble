{
  description = ''
    Nim wrapper around the ngtcp2 library
  '';
  inputs.src-ngtcp2.url = "https://github.com/status-im/nim-ngtcp2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
