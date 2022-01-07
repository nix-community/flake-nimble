{
  description = ''
    Nim wrapper for Ruby language support within tree-sitter
  '';
  inputs.src-treesitter_ruby.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_ruby";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
