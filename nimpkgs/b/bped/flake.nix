{
  description = ''
    Nim implementation of the Bittorrent ascii serialization protocol
  '';
  inputs.src-bped.url = "https://github.com/twist-vector/nim-bped.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
