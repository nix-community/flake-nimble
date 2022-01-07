{
  description = ''
    NOAA weather API wrapper
  '';
  inputs.src-noaa.url = "https://github.com/achesak/nim-noaa";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
