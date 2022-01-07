{
  description = ''
    Flexible TOML serialization [not] relying on run-time type information
  '';
  inputs.src-toml_serialization.url = "https://github.com/status-im/nim-toml-serialization";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
