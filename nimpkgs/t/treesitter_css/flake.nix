{
  description = ''
    Nim wrapper for CSS language support within tree-sitter
  '';
  inputs.src-treesitter_css.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_css";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
