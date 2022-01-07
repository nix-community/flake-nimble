{
  description = ''
    Nim wrapper for Agda language support within tree-sitter
  '';
  inputs.src-treesitter_agda.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_agda";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
