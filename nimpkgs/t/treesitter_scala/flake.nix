{
  description = ''
    Nim wrapper for Scala language support within tree-sitter
  '';
  inputs.src-treesitter_scala.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_scala";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
