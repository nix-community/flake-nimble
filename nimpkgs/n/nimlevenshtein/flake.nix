{
  description = ''
    The Levenshtein Nim module contains functions for fast computation of Levenshtein distance and string similarity.
  '';
  inputs.src-nimlevenshtein.url = "https://github.com/oswjk/nimlevenshtein";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
