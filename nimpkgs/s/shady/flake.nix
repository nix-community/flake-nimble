{
  description = ''
    Nim to GPU shader language compiler and supporting utilities.
  '';
  inputs.src-shady.url = "https://github.com/treeform/shady";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
