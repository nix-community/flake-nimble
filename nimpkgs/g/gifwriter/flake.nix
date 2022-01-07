{
  description = ''
    Animated GIF writing library based on jo_gif
  '';
  inputs.src-gifwriter.url = "https://github.com/rxi/gifwriter";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
