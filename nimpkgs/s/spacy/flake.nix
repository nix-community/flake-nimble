{
  description = ''
    Spatial data structures for Nim.
  '';
  inputs.src-spacy.url = "https://github.com/treeform/spacy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
