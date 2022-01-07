{
  description = ''
    MaxMind GeoIP library
  '';
  inputs.src-mmgeoip.url = "https://github.com/FedericoCeratto/nim-mmgeoip";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
