{
  description = ''R-Tree'';
  inputs.src-rtree-master.flake = false;
  inputs.src-rtree-master.type = "github";
  inputs.src-rtree-master.owner = "stefansalewski";
  inputs.src-rtree-master.repo = "RTree";
  inputs.src-rtree-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-rtree-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rtree-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rtree-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}