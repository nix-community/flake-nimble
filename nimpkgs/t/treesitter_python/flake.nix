{
  description = ''
    Nim wrapper for Python language support within tree-sitter
  '';
  inputs.src-treesitter_python.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_python";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
