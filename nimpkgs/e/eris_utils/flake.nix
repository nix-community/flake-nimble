{
  description = ''
    Utilities for the Encoding for Robust Immutable Storage (ERIS)
  '';
  inputs.src-eris_utils.url = "https://git.sr.ht/~ehmry/eris_utils";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
