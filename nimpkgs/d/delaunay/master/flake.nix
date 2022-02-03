{
  description = ''2D Delaunay triangulations'';
  inputs.src-delaunay-master.flake = false;
  inputs.src-delaunay-master.type = "github";
  inputs.src-delaunay-master.owner = "Nycto";
  inputs.src-delaunay-master.repo = "DelaunayNim";
  inputs.src-delaunay-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-delaunay-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-delaunay-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-delaunay-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}