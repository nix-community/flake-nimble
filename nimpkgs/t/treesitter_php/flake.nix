{
  description = ''
    Nim wrapper for PHP language support within tree-sitter
  '';
  inputs.src-treesitter_php.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_php";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
