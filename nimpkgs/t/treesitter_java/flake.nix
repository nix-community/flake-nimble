{
  description = ''
    Nim wrapper for Java language support within tree-sitter
  '';
  inputs.src-treesitter_java.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_java";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
