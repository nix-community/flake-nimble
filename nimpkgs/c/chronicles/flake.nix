{
  description = ''
    A crafty implementation of structured logging for Nim
  '';
  inputs.src-chronicles.url = "https://github.com/status-im/nim-chronicles";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
