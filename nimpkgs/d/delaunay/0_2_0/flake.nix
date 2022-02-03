{
  description = ''2D Delaunay triangulations'';
  inputs.src-delaunay-0_2_0.flake = false;
  inputs.src-delaunay-0_2_0.type = "github";
  inputs.src-delaunay-0_2_0.owner = "Nycto";
  inputs.src-delaunay-0_2_0.repo = "DelaunayNim";
  inputs.src-delaunay-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-delaunay-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-delaunay-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-delaunay-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}