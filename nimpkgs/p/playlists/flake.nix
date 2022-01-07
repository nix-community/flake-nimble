{
  description = ''
    Nim library for parsing PLS, M3U, and XSPF playlist files
  '';
  inputs.src-playlists.url = "https://github.com/achesak/nim-playlists";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
