{
  description = ''
    Utilities with dealing with 1d and 2d bit arrays.
  '';
  inputs.src-bitty.url = "https://github.com/treeform/bitty/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
