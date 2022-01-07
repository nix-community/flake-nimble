{
  description = ''
    a wrapper for the QBittorrent WebAPI for NIM.
  '';
  inputs.src-nimQBittorrent.url = "https://github.com/faulander/nimQBittorrent";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
