{
  description = ''
    Everything you want to do with colors.
  '';
  inputs.src-chroma.url = "https://github.com/treeform/chroma";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
