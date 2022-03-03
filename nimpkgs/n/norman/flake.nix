{
  description = ''Migration manager for Norm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."norman-develop".type = "github";
  inputs."norman-develop".owner = "riinr";
  inputs."norman-develop".repo = "flake-nimble";
  inputs."norman-develop".ref = "flake-pinning";
  inputs."norman-develop".dir = "nimpkgs/n/norman/develop";
  inputs."norman-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."norman-master".type = "github";
  inputs."norman-master".owner = "riinr";
  inputs."norman-master".repo = "flake-nimble";
  inputs."norman-master".ref = "flake-pinning";
  inputs."norman-master".dir = "nimpkgs/n/norman/master";
  inputs."norman-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."norman-1_0_0".type = "github";
  inputs."norman-1_0_0".owner = "riinr";
  inputs."norman-1_0_0".repo = "flake-nimble";
  inputs."norman-1_0_0".ref = "flake-pinning";
  inputs."norman-1_0_0".dir = "nimpkgs/n/norman/1_0_0";
  inputs."norman-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."norman-1_0_1".type = "github";
  inputs."norman-1_0_1".owner = "riinr";
  inputs."norman-1_0_1".repo = "flake-nimble";
  inputs."norman-1_0_1".ref = "flake-pinning";
  inputs."norman-1_0_1".dir = "nimpkgs/n/norman/1_0_1";
  inputs."norman-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."norman-1_0_2".type = "github";
  inputs."norman-1_0_2".owner = "riinr";
  inputs."norman-1_0_2".repo = "flake-nimble";
  inputs."norman-1_0_2".ref = "flake-pinning";
  inputs."norman-1_0_2".dir = "nimpkgs/n/norman/1_0_2";
  inputs."norman-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."norman-2_0_0".type = "github";
  inputs."norman-2_0_0".owner = "riinr";
  inputs."norman-2_0_0".repo = "flake-nimble";
  inputs."norman-2_0_0".ref = "flake-pinning";
  inputs."norman-2_0_0".dir = "nimpkgs/n/norman/2_0_0";
  inputs."norman-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."norman-2_1_0".type = "github";
  inputs."norman-2_1_0".owner = "riinr";
  inputs."norman-2_1_0".repo = "flake-nimble";
  inputs."norman-2_1_0".ref = "flake-pinning";
  inputs."norman-2_1_0".dir = "nimpkgs/n/norman/2_1_0";
  inputs."norman-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."norman-2_1_1".type = "github";
  inputs."norman-2_1_1".owner = "riinr";
  inputs."norman-2_1_1".repo = "flake-nimble";
  inputs."norman-2_1_1".ref = "flake-pinning";
  inputs."norman-2_1_1".dir = "nimpkgs/n/norman/2_1_1";
  inputs."norman-2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."norman-2_1_2".type = "github";
  inputs."norman-2_1_2".owner = "riinr";
  inputs."norman-2_1_2".repo = "flake-nimble";
  inputs."norman-2_1_2".ref = "flake-pinning";
  inputs."norman-2_1_2".dir = "nimpkgs/n/norman/2_1_2";
  inputs."norman-2_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."norman-2_1_3".type = "github";
  inputs."norman-2_1_3".owner = "riinr";
  inputs."norman-2_1_3".repo = "flake-nimble";
  inputs."norman-2_1_3".ref = "flake-pinning";
  inputs."norman-2_1_3".dir = "nimpkgs/n/norman/2_1_3";
  inputs."norman-2_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."norman-2_1_4".type = "github";
  inputs."norman-2_1_4".owner = "riinr";
  inputs."norman-2_1_4".repo = "flake-nimble";
  inputs."norman-2_1_4".ref = "flake-pinning";
  inputs."norman-2_1_4".dir = "nimpkgs/n/norman/2_1_4";
  inputs."norman-2_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."norman-2_1_5".type = "github";
  inputs."norman-2_1_5".owner = "riinr";
  inputs."norman-2_1_5".repo = "flake-nimble";
  inputs."norman-2_1_5".ref = "flake-pinning";
  inputs."norman-2_1_5".dir = "nimpkgs/n/norman/2_1_5";
  inputs."norman-2_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."norman-2_1_7".type = "github";
  inputs."norman-2_1_7".owner = "riinr";
  inputs."norman-2_1_7".repo = "flake-nimble";
  inputs."norman-2_1_7".ref = "flake-pinning";
  inputs."norman-2_1_7".dir = "nimpkgs/n/norman/2_1_7";
  inputs."norman-2_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}