{
  description = ''
    Nim wrapper for Javascript language support within tree-sitter
  '';
  inputs.src-treesitter_javascript.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_javascript";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
