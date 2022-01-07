{
  description = ''
    R-Tree
  '';
  inputs.src-rtree.url = "https://github.com/stefansalewski/RTree";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
