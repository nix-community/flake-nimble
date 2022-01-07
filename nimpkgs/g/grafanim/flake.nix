{
  description = ''
    Grafana module for Nim
  '';
  inputs.src-grafanim.url = "https://github.com/jamesalbert/grafanim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
