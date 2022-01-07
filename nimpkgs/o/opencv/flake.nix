{
  description = ''
    OpenCV wrapper
  '';
  inputs.src-opencv.url = "https://github.com/dom96/nim-opencv";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
