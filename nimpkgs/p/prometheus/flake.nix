{
  description = ''
    Library for exposing metrics to Prometheus
  '';
  inputs.src-prometheus.url = "https://github.com/dom96/prometheus";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
