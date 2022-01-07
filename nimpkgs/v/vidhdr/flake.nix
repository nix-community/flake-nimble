{
  description = ''
    Library for detecting the format of an video file
  '';
  inputs.src-vidhdr.url = "https://github.com/achesak/nim-vidhdr";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
