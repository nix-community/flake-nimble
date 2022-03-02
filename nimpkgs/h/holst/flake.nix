{
  description = ''A parser for Jupyter notebooks.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."holst-main".type = "github";
  inputs."holst-main".owner = "riinr";
  inputs."holst-main".repo = "flake-nimble";
  inputs."holst-main".ref = "flake-pinning";
  inputs."holst-main".dir = "nimpkgs/h/holst/main";
  inputs."holst-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."holst-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."holst-0_1_0".type = "github";
  inputs."holst-0_1_0".owner = "riinr";
  inputs."holst-0_1_0".repo = "flake-nimble";
  inputs."holst-0_1_0".ref = "flake-pinning";
  inputs."holst-0_1_0".dir = "nimpkgs/h/holst/0_1_0";
  inputs."holst-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."holst-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."holst-0_1_1".type = "github";
  inputs."holst-0_1_1".owner = "riinr";
  inputs."holst-0_1_1".repo = "flake-nimble";
  inputs."holst-0_1_1".ref = "flake-pinning";
  inputs."holst-0_1_1".dir = "nimpkgs/h/holst/0_1_1";
  inputs."holst-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."holst-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."holst-0_1_2".type = "github";
  inputs."holst-0_1_2".owner = "riinr";
  inputs."holst-0_1_2".repo = "flake-nimble";
  inputs."holst-0_1_2".ref = "flake-pinning";
  inputs."holst-0_1_2".dir = "nimpkgs/h/holst/0_1_2";
  inputs."holst-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."holst-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."holst-0_1_3".type = "github";
  inputs."holst-0_1_3".owner = "riinr";
  inputs."holst-0_1_3".repo = "flake-nimble";
  inputs."holst-0_1_3".ref = "flake-pinning";
  inputs."holst-0_1_3".dir = "nimpkgs/h/holst/0_1_3";
  inputs."holst-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."holst-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."holst-0_1_4".type = "github";
  inputs."holst-0_1_4".owner = "riinr";
  inputs."holst-0_1_4".repo = "flake-nimble";
  inputs."holst-0_1_4".ref = "flake-pinning";
  inputs."holst-0_1_4".dir = "nimpkgs/h/holst/0_1_4";
  inputs."holst-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."holst-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."holst-0_1_5".type = "github";
  inputs."holst-0_1_5".owner = "riinr";
  inputs."holst-0_1_5".repo = "flake-nimble";
  inputs."holst-0_1_5".ref = "flake-pinning";
  inputs."holst-0_1_5".dir = "nimpkgs/h/holst/0_1_5";
  inputs."holst-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."holst-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}