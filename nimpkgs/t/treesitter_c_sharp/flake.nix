{
  description = ''
    Nim wrapper for C# language support within tree-sitter
  '';
  inputs.src-treesitter_c_sharp.url = "https://github.com/genotrance/nimtreesitter?subdir=treesitter_c_sharp";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
