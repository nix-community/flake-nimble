{
  description = ''omni is a DSL for low-level audio programming.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."omni-develop".type = "github";
  inputs."omni-develop".owner = "riinr";
  inputs."omni-develop".repo = "flake-nimble";
  inputs."omni-develop".ref = "flake-pinning";
  inputs."omni-develop".dir = "nimpkgs/o/omni/develop";
  inputs."omni-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omni-master".type = "github";
  inputs."omni-master".owner = "riinr";
  inputs."omni-master".repo = "flake-nimble";
  inputs."omni-master".ref = "flake-pinning";
  inputs."omni-master".dir = "nimpkgs/o/omni/master";
  inputs."omni-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omni-0_1_0".type = "github";
  inputs."omni-0_1_0".owner = "riinr";
  inputs."omni-0_1_0".repo = "flake-nimble";
  inputs."omni-0_1_0".ref = "flake-pinning";
  inputs."omni-0_1_0".dir = "nimpkgs/o/omni/0_1_0";
  inputs."omni-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omni-0_2_0".type = "github";
  inputs."omni-0_2_0".owner = "riinr";
  inputs."omni-0_2_0".repo = "flake-nimble";
  inputs."omni-0_2_0".ref = "flake-pinning";
  inputs."omni-0_2_0".dir = "nimpkgs/o/omni/0_2_0";
  inputs."omni-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omni-0_2_1".type = "github";
  inputs."omni-0_2_1".owner = "riinr";
  inputs."omni-0_2_1".repo = "flake-nimble";
  inputs."omni-0_2_1".ref = "flake-pinning";
  inputs."omni-0_2_1".dir = "nimpkgs/o/omni/0_2_1";
  inputs."omni-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omni-0_2_2".type = "github";
  inputs."omni-0_2_2".owner = "riinr";
  inputs."omni-0_2_2".repo = "flake-nimble";
  inputs."omni-0_2_2".ref = "flake-pinning";
  inputs."omni-0_2_2".dir = "nimpkgs/o/omni/0_2_2";
  inputs."omni-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omni-0_2_3".type = "github";
  inputs."omni-0_2_3".owner = "riinr";
  inputs."omni-0_2_3".repo = "flake-nimble";
  inputs."omni-0_2_3".ref = "flake-pinning";
  inputs."omni-0_2_3".dir = "nimpkgs/o/omni/0_2_3";
  inputs."omni-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omni-0_4_0".type = "github";
  inputs."omni-0_4_0".owner = "riinr";
  inputs."omni-0_4_0".repo = "flake-nimble";
  inputs."omni-0_4_0".ref = "flake-pinning";
  inputs."omni-0_4_0".dir = "nimpkgs/o/omni/0_4_0";
  inputs."omni-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}