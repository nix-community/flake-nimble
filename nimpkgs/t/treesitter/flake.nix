{
  description = ''
    Nim wrapper of the tree-sitter incremental parsing library
  '';
  inputs.src-treesitter.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
