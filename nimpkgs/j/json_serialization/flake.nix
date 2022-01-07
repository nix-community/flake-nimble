{
  description = ''
    Flexible JSON serialization not relying on run-time type information
  '';
  inputs.src-json_serialization.url = "https://github.com/status-im/nim-json-serialization";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
