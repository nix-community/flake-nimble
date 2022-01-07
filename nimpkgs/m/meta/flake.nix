{
  description = ''
    View and set the metadata for audio files
  '';
  inputs.src-meta.url = "https://github.com/RainbowAsteroids/meta";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
