{
  description = ''A Quadtree implementation'';
  inputs.src-quadtree-0_2_0.flake = false;
  inputs.src-quadtree-0_2_0.type = "github";
  inputs.src-quadtree-0_2_0.owner = "Nycto";
  inputs.src-quadtree-0_2_0.repo = "QuadtreeNim";
  inputs.src-quadtree-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-quadtree-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-quadtree-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-quadtree-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}