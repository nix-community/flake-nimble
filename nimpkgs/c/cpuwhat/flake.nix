{
  description = ''
    Nim utilities for advanced CPU operations: CPU identification, bindings to assorted intrinsics
  '';
  inputs.src-cpuwhat.url = "https://github.com/awr1/cpuwhat";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
