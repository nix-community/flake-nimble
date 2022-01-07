{
  description = ''
    Nim wrapper for HTML language support within tree-sitter
  '';
  inputs.src-treesitter_html.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_html";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
