{
  description = ''Red/Black Trees'';
  inputs.src-rbtree-master.flake = false;
  inputs.src-rbtree-master.type = "github";
  inputs.src-rbtree-master.owner = "Nycto";
  inputs.src-rbtree-master.repo = "RBTreeNim";
  inputs.src-rbtree-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-rbtree-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rbtree-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rbtree-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}