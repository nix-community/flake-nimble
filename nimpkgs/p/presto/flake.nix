{
  description = ''
    REST API framework for Nim language
  '';
  inputs.src-presto.url = "https://github.com/status-im/nim-presto";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
