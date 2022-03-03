{
  description = ''A Jupyter kernel for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jupyternim-master".type = "github";
  inputs."jupyternim-master".owner = "riinr";
  inputs."jupyternim-master".repo = "flake-nimble";
  inputs."jupyternim-master".ref = "flake-pinning";
  inputs."jupyternim-master".dir = "nimpkgs/j/jupyternim/master";
  inputs."jupyternim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_1_1".type = "github";
  inputs."jupyternim-0_1_1".owner = "riinr";
  inputs."jupyternim-0_1_1".repo = "flake-nimble";
  inputs."jupyternim-0_1_1".ref = "flake-pinning";
  inputs."jupyternim-0_1_1".dir = "nimpkgs/j/jupyternim/0_1_1";
  inputs."jupyternim-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_2_0".type = "github";
  inputs."jupyternim-0_2_0".owner = "riinr";
  inputs."jupyternim-0_2_0".repo = "flake-nimble";
  inputs."jupyternim-0_2_0".ref = "flake-pinning";
  inputs."jupyternim-0_2_0".dir = "nimpkgs/j/jupyternim/0_2_0";
  inputs."jupyternim-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_4_1".type = "github";
  inputs."jupyternim-0_4_1".owner = "riinr";
  inputs."jupyternim-0_4_1".repo = "flake-nimble";
  inputs."jupyternim-0_4_1".ref = "flake-pinning";
  inputs."jupyternim-0_4_1".dir = "nimpkgs/j/jupyternim/0_4_1";
  inputs."jupyternim-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_4_2".type = "github";
  inputs."jupyternim-0_4_2".owner = "riinr";
  inputs."jupyternim-0_4_2".repo = "flake-nimble";
  inputs."jupyternim-0_4_2".ref = "flake-pinning";
  inputs."jupyternim-0_4_2".dir = "nimpkgs/j/jupyternim/0_4_2";
  inputs."jupyternim-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_5_0".type = "github";
  inputs."jupyternim-0_5_0".owner = "riinr";
  inputs."jupyternim-0_5_0".repo = "flake-nimble";
  inputs."jupyternim-0_5_0".ref = "flake-pinning";
  inputs."jupyternim-0_5_0".dir = "nimpkgs/j/jupyternim/0_5_0";
  inputs."jupyternim-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_5_1".type = "github";
  inputs."jupyternim-0_5_1".owner = "riinr";
  inputs."jupyternim-0_5_1".repo = "flake-nimble";
  inputs."jupyternim-0_5_1".ref = "flake-pinning";
  inputs."jupyternim-0_5_1".dir = "nimpkgs/j/jupyternim/0_5_1";
  inputs."jupyternim-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_5_2".type = "github";
  inputs."jupyternim-0_5_2".owner = "riinr";
  inputs."jupyternim-0_5_2".repo = "flake-nimble";
  inputs."jupyternim-0_5_2".ref = "flake-pinning";
  inputs."jupyternim-0_5_2".dir = "nimpkgs/j/jupyternim/0_5_2";
  inputs."jupyternim-0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_5_3".type = "github";
  inputs."jupyternim-0_5_3".owner = "riinr";
  inputs."jupyternim-0_5_3".repo = "flake-nimble";
  inputs."jupyternim-0_5_3".ref = "flake-pinning";
  inputs."jupyternim-0_5_3".dir = "nimpkgs/j/jupyternim/0_5_3";
  inputs."jupyternim-0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_5_4".type = "github";
  inputs."jupyternim-0_5_4".owner = "riinr";
  inputs."jupyternim-0_5_4".repo = "flake-nimble";
  inputs."jupyternim-0_5_4".ref = "flake-pinning";
  inputs."jupyternim-0_5_4".dir = "nimpkgs/j/jupyternim/0_5_4";
  inputs."jupyternim-0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_5_5".type = "github";
  inputs."jupyternim-0_5_5".owner = "riinr";
  inputs."jupyternim-0_5_5".repo = "flake-nimble";
  inputs."jupyternim-0_5_5".ref = "flake-pinning";
  inputs."jupyternim-0_5_5".dir = "nimpkgs/j/jupyternim/0_5_5";
  inputs."jupyternim-0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_5_7".type = "github";
  inputs."jupyternim-0_5_7".owner = "riinr";
  inputs."jupyternim-0_5_7".repo = "flake-nimble";
  inputs."jupyternim-0_5_7".ref = "flake-pinning";
  inputs."jupyternim-0_5_7".dir = "nimpkgs/j/jupyternim/0_5_7";
  inputs."jupyternim-0_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_5_8".type = "github";
  inputs."jupyternim-0_5_8".owner = "riinr";
  inputs."jupyternim-0_5_8".repo = "flake-nimble";
  inputs."jupyternim-0_5_8".ref = "flake-pinning";
  inputs."jupyternim-0_5_8".dir = "nimpkgs/j/jupyternim/0_5_8";
  inputs."jupyternim-0_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_6_0".type = "github";
  inputs."jupyternim-0_6_0".owner = "riinr";
  inputs."jupyternim-0_6_0".repo = "flake-nimble";
  inputs."jupyternim-0_6_0".ref = "flake-pinning";
  inputs."jupyternim-0_6_0".dir = "nimpkgs/j/jupyternim/0_6_0";
  inputs."jupyternim-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_6_1".type = "github";
  inputs."jupyternim-0_6_1".owner = "riinr";
  inputs."jupyternim-0_6_1".repo = "flake-nimble";
  inputs."jupyternim-0_6_1".ref = "flake-pinning";
  inputs."jupyternim-0_6_1".dir = "nimpkgs/j/jupyternim/0_6_1";
  inputs."jupyternim-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_6_2".type = "github";
  inputs."jupyternim-0_6_2".owner = "riinr";
  inputs."jupyternim-0_6_2".repo = "flake-nimble";
  inputs."jupyternim-0_6_2".ref = "flake-pinning";
  inputs."jupyternim-0_6_2".dir = "nimpkgs/j/jupyternim/0_6_2";
  inputs."jupyternim-0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_6_3".type = "github";
  inputs."jupyternim-0_6_3".owner = "riinr";
  inputs."jupyternim-0_6_3".repo = "flake-nimble";
  inputs."jupyternim-0_6_3".ref = "flake-pinning";
  inputs."jupyternim-0_6_3".dir = "nimpkgs/j/jupyternim/0_6_3";
  inputs."jupyternim-0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-0_7_0".type = "github";
  inputs."jupyternim-0_7_0".owner = "riinr";
  inputs."jupyternim-0_7_0".repo = "flake-nimble";
  inputs."jupyternim-0_7_0".ref = "flake-pinning";
  inputs."jupyternim-0_7_0".dir = "nimpkgs/j/jupyternim/0_7_0";
  inputs."jupyternim-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-v0_3_0".type = "github";
  inputs."jupyternim-v0_3_0".owner = "riinr";
  inputs."jupyternim-v0_3_0".repo = "flake-nimble";
  inputs."jupyternim-v0_3_0".ref = "flake-pinning";
  inputs."jupyternim-v0_3_0".dir = "nimpkgs/j/jupyternim/v0_3_0";
  inputs."jupyternim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-v0_4_0".type = "github";
  inputs."jupyternim-v0_4_0".owner = "riinr";
  inputs."jupyternim-v0_4_0".repo = "flake-nimble";
  inputs."jupyternim-v0_4_0".ref = "flake-pinning";
  inputs."jupyternim-v0_4_0".dir = "nimpkgs/j/jupyternim/v0_4_0";
  inputs."jupyternim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jupyternim-v0_4_1".type = "github";
  inputs."jupyternim-v0_4_1".owner = "riinr";
  inputs."jupyternim-v0_4_1".repo = "flake-nimble";
  inputs."jupyternim-v0_4_1".ref = "flake-pinning";
  inputs."jupyternim-v0_4_1".dir = "nimpkgs/j/jupyternim/v0_4_1";
  inputs."jupyternim-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}