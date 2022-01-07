{
  description = ''
    A* Pathfinding
  '';
  inputs.src-astar.url = "https://github.com/Nycto/AStarNim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
