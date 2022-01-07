{
  description = ''
    Nim wrapper for Go language support within tree-sitter
  '';
  inputs.src-treesitter_go.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_go";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
