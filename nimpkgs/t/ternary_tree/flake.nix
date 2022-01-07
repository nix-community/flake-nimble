{
  description = ''
    Structural sharing data structure of lists and maps.
  '';
  inputs.src-ternary_tree.url = "https://github.com/calcit-lang/ternary-tree";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
