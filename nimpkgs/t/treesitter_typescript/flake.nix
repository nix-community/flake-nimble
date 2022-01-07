{
  description = ''
    Nim wrapper for Typescript language support within tree-sitter
  '';
  inputs.src-treesitter_typescript.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_typescript";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
