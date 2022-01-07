{
  description = ''
    Library for detecting the format of an image
  '';
  inputs.src-imghdr.url = "https://github.com/achesak/nim-imghdr";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
