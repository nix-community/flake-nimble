{
  description = ''Red/Black Trees'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rbtree-master".type = "github";
  inputs."rbtree-master".owner = "riinr";
  inputs."rbtree-master".repo = "flake-nimble";
  inputs."rbtree-master".ref = "flake-pinning";
  inputs."rbtree-master".dir = "nimpkgs/r/rbtree/master";
  inputs."rbtree-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rbtree-0_1_0".type = "github";
  inputs."rbtree-0_1_0".owner = "riinr";
  inputs."rbtree-0_1_0".repo = "flake-nimble";
  inputs."rbtree-0_1_0".ref = "flake-pinning";
  inputs."rbtree-0_1_0".dir = "nimpkgs/r/rbtree/0_1_0";
  inputs."rbtree-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rbtree-0_2_0".type = "github";
  inputs."rbtree-0_2_0".owner = "riinr";
  inputs."rbtree-0_2_0".repo = "flake-nimble";
  inputs."rbtree-0_2_0".ref = "flake-pinning";
  inputs."rbtree-0_2_0".dir = "nimpkgs/r/rbtree/0_2_0";
  inputs."rbtree-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rbtree-0_3_0".type = "github";
  inputs."rbtree-0_3_0".owner = "riinr";
  inputs."rbtree-0_3_0".repo = "flake-nimble";
  inputs."rbtree-0_3_0".ref = "flake-pinning";
  inputs."rbtree-0_3_0".dir = "nimpkgs/r/rbtree/0_3_0";
  inputs."rbtree-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rbtree-0_4_0".type = "github";
  inputs."rbtree-0_4_0".owner = "riinr";
  inputs."rbtree-0_4_0".repo = "flake-nimble";
  inputs."rbtree-0_4_0".ref = "flake-pinning";
  inputs."rbtree-0_4_0".dir = "nimpkgs/r/rbtree/0_4_0";
  inputs."rbtree-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rbtree-0_5_0".type = "github";
  inputs."rbtree-0_5_0".owner = "riinr";
  inputs."rbtree-0_5_0".repo = "flake-nimble";
  inputs."rbtree-0_5_0".ref = "flake-pinning";
  inputs."rbtree-0_5_0".dir = "nimpkgs/r/rbtree/0_5_0";
  inputs."rbtree-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}