{
  description = ''
    Dimensionful types and dimensional analysis.
  '';
  inputs.src-metric.url = "https://github.com/mjendrusch/metric";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
