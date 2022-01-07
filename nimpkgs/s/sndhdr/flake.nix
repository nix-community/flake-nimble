{
  description = ''
    Library for detecting the format of a sound file
  '';
  inputs.src-sndhdr.url = "https://github.com/achesak/nim-sndhdr";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
