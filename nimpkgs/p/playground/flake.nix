{
  description = ''
    Web-based playground for testing Nim code.
  '';
  inputs.src-playground.url = "https://github.com/theduke/nim-playground";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
