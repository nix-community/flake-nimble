{
  description = ''
    A modern and extensible serialization framework for Nim
  '';
  inputs.src-serialization.url = "https://github.com/status-im/nim-serialization";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
