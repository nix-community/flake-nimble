{
  description = ''
    Bindings for the Music Player Daemon C client library
  '';
  inputs.src-libmpdclient.url = "https://github.com/lompik/libmpdclient.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
