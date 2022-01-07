{
  description = ''
    Nim wrapper for OCaml language support within tree-sitter
  '';
  inputs.src-treesitter_ocaml.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_ocaml";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
