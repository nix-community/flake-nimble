{
  description = ''
    A Quadtree implementation
  '';
  inputs.src-quadtree.url = "https://github.com/Nycto/QuadtreeNim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
