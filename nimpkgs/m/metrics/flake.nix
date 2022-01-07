{
  description = ''
    Nim metrics client library supporting the Prometheus monitoring toolkit
  '';
  inputs.src-metrics.url = "https://github.com/status-im/nim-metrics";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
