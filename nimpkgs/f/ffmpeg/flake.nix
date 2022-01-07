{
  description = ''
    ffmpeg.nim is the Nim binding for FFMpeg(4.3.2).
  '';
  inputs.src-ffmpeg.url = "https://github.com/momeemt/ffmpeg.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
