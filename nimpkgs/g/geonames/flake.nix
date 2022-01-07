{
  description = ''
    GeoNames API wrapper
  '';
  inputs.src-geonames.url = "https://github.com/achesak/nim-geonames";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
