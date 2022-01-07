{
  description = ''
    A simple, stateless StatsD client library
  '';
  inputs.src-statsd_client.url = "https://github.com/FedericoCeratto/nim-statsd-client";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
