{
  description = ''
    Word2vec implemented in nim.
  '';
  inputs.src-word2vec.url = "https://github.com/treeform/word2vec";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
