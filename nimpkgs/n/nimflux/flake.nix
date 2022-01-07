{
  description = ''
    InfluxDB API client library
  '';
  inputs.src-nimflux.url = "https://github.com/tdely/nimflux";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
