{
  description = ''Red/Black Trees'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rbtree-0_1_0.flake = false;
  inputs.src-rbtree-0_1_0.type = "github";
  inputs.src-rbtree-0_1_0.owner = "Nycto";
  inputs.src-rbtree-0_1_0.repo = "RBTreeNim";
  inputs.src-rbtree-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."optional_t".type = "github";
  inputs."optional_t".owner = "riinr";
  inputs."optional_t".repo = "flake-nimble";
  inputs."optional_t".ref = "flake-pinning";
  inputs."optional_t".dir = "nimpkgs/o/optional_t";

  outputs = { self, nixpkgs, flakeNimbleLib, src-rbtree-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rbtree-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rbtree-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}