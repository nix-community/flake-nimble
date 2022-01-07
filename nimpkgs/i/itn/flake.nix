{
  description = ''
    Nim module for parsing ITN (TomTom intinerary) files
  '';
  inputs.src-itn.url = "https://github.com/achesak/nim-itn";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
