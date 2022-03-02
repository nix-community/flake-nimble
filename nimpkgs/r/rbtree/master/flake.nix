{
  description = ''Red/Black Trees'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-rbtree-master.flake = false;
  inputs.src-rbtree-master.type = "github";
  inputs.src-rbtree-master.owner = "Nycto";
  inputs.src-rbtree-master.repo = "RBTreeNim";
  inputs.src-rbtree-master.ref = "refs/heads/master";
  inputs.src-rbtree-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rbtree-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rbtree-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rbtree-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}