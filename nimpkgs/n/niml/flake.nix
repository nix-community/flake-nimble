{
  description = ''html dsl'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."niml-main".type = "github";
  inputs."niml-main".owner = "riinr";
  inputs."niml-main".repo = "flake-nimble";
  inputs."niml-main".ref = "flake-pinning";
  inputs."niml-main".dir = "nimpkgs/n/niml/main";
  inputs."niml-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niml-0_1_0".type = "github";
  inputs."niml-0_1_0".owner = "riinr";
  inputs."niml-0_1_0".repo = "flake-nimble";
  inputs."niml-0_1_0".ref = "flake-pinning";
  inputs."niml-0_1_0".dir = "nimpkgs/n/niml/0_1_0";
  inputs."niml-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niml-0_1_1".type = "github";
  inputs."niml-0_1_1".owner = "riinr";
  inputs."niml-0_1_1".repo = "flake-nimble";
  inputs."niml-0_1_1".ref = "flake-pinning";
  inputs."niml-0_1_1".dir = "nimpkgs/n/niml/0_1_1";
  inputs."niml-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niml-0_1_2".type = "github";
  inputs."niml-0_1_2".owner = "riinr";
  inputs."niml-0_1_2".repo = "flake-nimble";
  inputs."niml-0_1_2".ref = "flake-pinning";
  inputs."niml-0_1_2".dir = "nimpkgs/n/niml/0_1_2";
  inputs."niml-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niml-0_1_3".type = "github";
  inputs."niml-0_1_3".owner = "riinr";
  inputs."niml-0_1_3".repo = "flake-nimble";
  inputs."niml-0_1_3".ref = "flake-pinning";
  inputs."niml-0_1_3".dir = "nimpkgs/n/niml/0_1_3";
  inputs."niml-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niml-0_1_4".type = "github";
  inputs."niml-0_1_4".owner = "riinr";
  inputs."niml-0_1_4".repo = "flake-nimble";
  inputs."niml-0_1_4".ref = "flake-pinning";
  inputs."niml-0_1_4".dir = "nimpkgs/n/niml/0_1_4";
  inputs."niml-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niml-0_1_5".type = "github";
  inputs."niml-0_1_5".owner = "riinr";
  inputs."niml-0_1_5".repo = "flake-nimble";
  inputs."niml-0_1_5".ref = "flake-pinning";
  inputs."niml-0_1_5".dir = "nimpkgs/n/niml/0_1_5";
  inputs."niml-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niml-0_2_0".type = "github";
  inputs."niml-0_2_0".owner = "riinr";
  inputs."niml-0_2_0".repo = "flake-nimble";
  inputs."niml-0_2_0".ref = "flake-pinning";
  inputs."niml-0_2_0".dir = "nimpkgs/n/niml/0_2_0";
  inputs."niml-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niml-0_2_1".type = "github";
  inputs."niml-0_2_1".owner = "riinr";
  inputs."niml-0_2_1".repo = "flake-nimble";
  inputs."niml-0_2_1".ref = "flake-pinning";
  inputs."niml-0_2_1".dir = "nimpkgs/n/niml/0_2_1";
  inputs."niml-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niml-0_2_2".type = "github";
  inputs."niml-0_2_2".owner = "riinr";
  inputs."niml-0_2_2".repo = "flake-nimble";
  inputs."niml-0_2_2".ref = "flake-pinning";
  inputs."niml-0_2_2".dir = "nimpkgs/n/niml/0_2_2";
  inputs."niml-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."niml-0_2_3".type = "github";
  inputs."niml-0_2_3".owner = "riinr";
  inputs."niml-0_2_3".repo = "flake-nimble";
  inputs."niml-0_2_3".ref = "flake-pinning";
  inputs."niml-0_2_3".dir = "nimpkgs/n/niml/0_2_3";
  inputs."niml-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}