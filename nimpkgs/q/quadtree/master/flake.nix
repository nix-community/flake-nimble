{
  description = ''A Quadtree implementation'';
  inputs.src-quadtree-master.flake = false;
  inputs.src-quadtree-master.type = "github";
  inputs.src-quadtree-master.owner = "Nycto";
  inputs.src-quadtree-master.repo = "QuadtreeNim";
  inputs.src-quadtree-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-quadtree-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-quadtree-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-quadtree-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}