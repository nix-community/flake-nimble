{
  description = ''
    Additional functions for sequences that are not present in sequtils
  '';
  inputs.src-sequtils2.url = "https://github.com/Michedev/sequtils2";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
