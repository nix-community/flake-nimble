{
  description = ''Max wrapper for omni.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."omnimax-develop".type = "github";
  inputs."omnimax-develop".owner = "riinr";
  inputs."omnimax-develop".repo = "flake-nimble";
  inputs."omnimax-develop".ref = "flake-pinning";
  inputs."omnimax-develop".dir = "nimpkgs/o/omnimax/develop";
  inputs."omnimax-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omnimax-master".type = "github";
  inputs."omnimax-master".owner = "riinr";
  inputs."omnimax-master".repo = "flake-nimble";
  inputs."omnimax-master".ref = "flake-pinning";
  inputs."omnimax-master".dir = "nimpkgs/o/omnimax/master";
  inputs."omnimax-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omnimax-0_1_0".type = "github";
  inputs."omnimax-0_1_0".owner = "riinr";
  inputs."omnimax-0_1_0".repo = "flake-nimble";
  inputs."omnimax-0_1_0".ref = "flake-pinning";
  inputs."omnimax-0_1_0".dir = "nimpkgs/o/omnimax/0_1_0";
  inputs."omnimax-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omnimax-0_2_0".type = "github";
  inputs."omnimax-0_2_0".owner = "riinr";
  inputs."omnimax-0_2_0".repo = "flake-nimble";
  inputs."omnimax-0_2_0".ref = "flake-pinning";
  inputs."omnimax-0_2_0".dir = "nimpkgs/o/omnimax/0_2_0";
  inputs."omnimax-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omnimax-0_2_1".type = "github";
  inputs."omnimax-0_2_1".owner = "riinr";
  inputs."omnimax-0_2_1".repo = "flake-nimble";
  inputs."omnimax-0_2_1".ref = "flake-pinning";
  inputs."omnimax-0_2_1".dir = "nimpkgs/o/omnimax/0_2_1";
  inputs."omnimax-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omnimax-0_2_2".type = "github";
  inputs."omnimax-0_2_2".owner = "riinr";
  inputs."omnimax-0_2_2".repo = "flake-nimble";
  inputs."omnimax-0_2_2".ref = "flake-pinning";
  inputs."omnimax-0_2_2".dir = "nimpkgs/o/omnimax/0_2_2";
  inputs."omnimax-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omnimax-0_2_3".type = "github";
  inputs."omnimax-0_2_3".owner = "riinr";
  inputs."omnimax-0_2_3".repo = "flake-nimble";
  inputs."omnimax-0_2_3".ref = "flake-pinning";
  inputs."omnimax-0_2_3".dir = "nimpkgs/o/omnimax/0_2_3";
  inputs."omnimax-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."omnimax-0_4_0".type = "github";
  inputs."omnimax-0_4_0".owner = "riinr";
  inputs."omnimax-0_4_0".repo = "flake-nimble";
  inputs."omnimax-0_4_0".ref = "flake-pinning";
  inputs."omnimax-0_4_0".dir = "nimpkgs/o/omnimax/0_4_0";
  inputs."omnimax-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}