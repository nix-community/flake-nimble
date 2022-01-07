{
  description = ''
    libp2p implementation in Nim
  '';
  inputs.src-libp2p.url = "https://github.com/status-im/nim-libp2p";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
