{
  description = ''
    Implementation of exponential backoff for nim
  '';
  inputs.src-backoff.url = "https://github.com/CORDEA/backoff";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
