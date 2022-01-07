{
  description = ''
    Nim module for parsing GPX (GPS Exchange format) files
  '';
  inputs.src-gpx.url = "https://github.com/achesak/nim-gpx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
