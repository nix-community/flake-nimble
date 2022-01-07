{
  description = ''
    A simple library for Google Maps Geocoding API
  '';
  inputs.src-geocoding.url = "https://github.com/saratchandra92/nim-geocoding";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
