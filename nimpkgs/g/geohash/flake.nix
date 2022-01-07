{
  description = ''
    Nim implementation of the geohash latitude/longitude geocode system
  '';
  inputs.src-geohash.url = "https://github.com/twist-vector/nim-geohash.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
