{
  description = ''
    YAML 1.2 implementation for Nim
  '';
  inputs.src-yaml.url = "https://github.com/flyx/NimYAML";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
