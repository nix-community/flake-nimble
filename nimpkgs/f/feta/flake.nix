{
  description = ''
    A domain-specific for general purpose office automation. The language is embedded in Nim and allows for quick and easy integration of different office software environments.
  '';
  inputs.src-feta.url = "https://github.com/FlorianRauls/office-DSL-thesis";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
