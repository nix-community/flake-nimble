{
  description = ''2D Delaunay triangulations'';
  inputs."delaunay-master".url = "path:./master";
  inputs."delaunay-0_2_0".url = "path:./0_2_0";
  inputs."delaunay-0_3_0".url = "path:./0_3_0";
  inputs."delaunay-0_3_1".url = "path:./0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}