{
  description = ''
    Encoding for Robust Immutable Storage (ERIS)
  '';
  inputs.src-eris.url = "https://git.sr.ht/~ehmry/eris";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
