{
  description = ''
    2D Delaunay triangulations
  '';
  inputs.src-delaunay.url = "https://github.com/Nycto/DelaunayNim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
