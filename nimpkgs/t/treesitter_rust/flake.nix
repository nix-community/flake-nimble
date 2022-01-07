{
  description = ''
    Nim wrapper for Rust language support within tree-sitter
  '';
  inputs.src-treesitter_rust.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_rust";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
