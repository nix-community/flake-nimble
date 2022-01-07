{
  description = ''
    Nim wrapper for Bash language support within tree-sitter
  '';
  inputs.src-treesitter_bash.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_bash";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
