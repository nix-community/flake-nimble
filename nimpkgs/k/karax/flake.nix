{
  description = ''Karax is a framework for developing single page applications in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."karax-master".type = "github";
  inputs."karax-master".owner = "riinr";
  inputs."karax-master".repo = "flake-nimble";
  inputs."karax-master".ref = "flake-pinning";
  inputs."karax-master".dir = "nimpkgs/k/karax/master";
  inputs."karax-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."karax-0_1_0".type = "github";
  inputs."karax-0_1_0".owner = "riinr";
  inputs."karax-0_1_0".repo = "flake-nimble";
  inputs."karax-0_1_0".ref = "flake-pinning";
  inputs."karax-0_1_0".dir = "nimpkgs/k/karax/0_1_0";
  inputs."karax-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."karax-0_2_0".type = "github";
  inputs."karax-0_2_0".owner = "riinr";
  inputs."karax-0_2_0".repo = "flake-nimble";
  inputs."karax-0_2_0".ref = "flake-pinning";
  inputs."karax-0_2_0".dir = "nimpkgs/k/karax/0_2_0";
  inputs."karax-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."karax-1_0_0".type = "github";
  inputs."karax-1_0_0".owner = "riinr";
  inputs."karax-1_0_0".repo = "flake-nimble";
  inputs."karax-1_0_0".ref = "flake-pinning";
  inputs."karax-1_0_0".dir = "nimpkgs/k/karax/1_0_0";
  inputs."karax-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."karax-1_1_0".type = "github";
  inputs."karax-1_1_0".owner = "riinr";
  inputs."karax-1_1_0".repo = "flake-nimble";
  inputs."karax-1_1_0".ref = "flake-pinning";
  inputs."karax-1_1_0".dir = "nimpkgs/k/karax/1_1_0";
  inputs."karax-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."karax-1_1_1".type = "github";
  inputs."karax-1_1_1".owner = "riinr";
  inputs."karax-1_1_1".repo = "flake-nimble";
  inputs."karax-1_1_1".ref = "flake-pinning";
  inputs."karax-1_1_1".dir = "nimpkgs/k/karax/1_1_1";
  inputs."karax-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."karax-1_1_2".type = "github";
  inputs."karax-1_1_2".owner = "riinr";
  inputs."karax-1_1_2".repo = "flake-nimble";
  inputs."karax-1_1_2".ref = "flake-pinning";
  inputs."karax-1_1_2".dir = "nimpkgs/k/karax/1_1_2";
  inputs."karax-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."karax-1_1_3".type = "github";
  inputs."karax-1_1_3".owner = "riinr";
  inputs."karax-1_1_3".repo = "flake-nimble";
  inputs."karax-1_1_3".ref = "flake-pinning";
  inputs."karax-1_1_3".dir = "nimpkgs/k/karax/1_1_3";
  inputs."karax-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."karax-1_2_1".type = "github";
  inputs."karax-1_2_1".owner = "riinr";
  inputs."karax-1_2_1".repo = "flake-nimble";
  inputs."karax-1_2_1".ref = "flake-pinning";
  inputs."karax-1_2_1".dir = "nimpkgs/k/karax/1_2_1";
  inputs."karax-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}