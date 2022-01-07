{
  description = ''
    HQ Trivia API wrapper for Nim
  '';
  inputs.src-nimhq.url = "https://github.com/sillibird/nimhq";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
