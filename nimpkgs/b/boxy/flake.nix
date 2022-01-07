{
  description = ''
    2D GPU rendering with a tiling atlas.
  '';
  inputs.src-boxy.url = "https://github.com/treeform/boxy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
