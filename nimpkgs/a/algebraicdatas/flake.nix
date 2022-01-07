{
  description = ''
    This module provides the feature of algebraic data type and its associated method
  '';
  inputs.src-algebraicdatas.url = "https://github.com/chocobo333/AlgebraicDataTypes";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
