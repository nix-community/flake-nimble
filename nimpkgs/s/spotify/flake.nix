{
  description = ''
    A Nim wrapper for the Spotify Web API
  '';
  inputs.src-spotify.url = "https://github.com/CORDEA/spotify";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
