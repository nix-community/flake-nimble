{
  description = ''
    A nimterop wrapper for the nestegg portable webm video demuxer
  '';
  inputs.src-nestegg.url = "https://github.com/capocasa/nim-nestegg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
