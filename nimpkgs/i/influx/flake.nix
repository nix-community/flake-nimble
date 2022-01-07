{
  description = ''
    wrapper for communicating with InfluxDB over the REST interface
  '';
  inputs.src-influx.url = "https://github.com/samdmarshall/influx.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
