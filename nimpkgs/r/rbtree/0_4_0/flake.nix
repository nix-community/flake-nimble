{
  description = ''Red/Black Trees'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-rbtree-0_4_0.flake = false;
  inputs.src-rbtree-0_4_0.type = "github";
  inputs.src-rbtree-0_4_0.owner = "Nycto";
  inputs.src-rbtree-0_4_0.repo = "RBTreeNim";
  inputs.src-rbtree-0_4_0.ref = "refs/tags/0.4.0";
  inputs.src-rbtree-0_4_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rbtree-0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rbtree-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rbtree-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}