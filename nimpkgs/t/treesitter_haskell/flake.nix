{
  description = ''
    Nim wrapper for Haskell language support within tree-sitter
  '';
  inputs.src-treesitter_haskell.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_haskell";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
