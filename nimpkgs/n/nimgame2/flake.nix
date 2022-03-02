{
  description = ''A simple 2D game engine for Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimgame2-master".type = "github";
  inputs."nimgame2-master".owner = "riinr";
  inputs."nimgame2-master".repo = "flake-nimble";
  inputs."nimgame2-master".ref = "flake-pinning";
  inputs."nimgame2-master".dir = "nimpkgs/n/nimgame2/master";
  inputs."nimgame2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgame2-v0_1".type = "github";
  inputs."nimgame2-v0_1".owner = "riinr";
  inputs."nimgame2-v0_1".repo = "flake-nimble";
  inputs."nimgame2-v0_1".ref = "flake-pinning";
  inputs."nimgame2-v0_1".dir = "nimpkgs/n/nimgame2/v0_1";
  inputs."nimgame2-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgame2-v0_2".type = "github";
  inputs."nimgame2-v0_2".owner = "riinr";
  inputs."nimgame2-v0_2".repo = "flake-nimble";
  inputs."nimgame2-v0_2".ref = "flake-pinning";
  inputs."nimgame2-v0_2".dir = "nimpkgs/n/nimgame2/v0_2";
  inputs."nimgame2-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgame2-v0_3".type = "github";
  inputs."nimgame2-v0_3".owner = "riinr";
  inputs."nimgame2-v0_3".repo = "flake-nimble";
  inputs."nimgame2-v0_3".ref = "flake-pinning";
  inputs."nimgame2-v0_3".dir = "nimpkgs/n/nimgame2/v0_3";
  inputs."nimgame2-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgame2-v0_4".type = "github";
  inputs."nimgame2-v0_4".owner = "riinr";
  inputs."nimgame2-v0_4".repo = "flake-nimble";
  inputs."nimgame2-v0_4".ref = "flake-pinning";
  inputs."nimgame2-v0_4".dir = "nimpkgs/n/nimgame2/v0_4";
  inputs."nimgame2-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgame2-v0_5".type = "github";
  inputs."nimgame2-v0_5".owner = "riinr";
  inputs."nimgame2-v0_5".repo = "flake-nimble";
  inputs."nimgame2-v0_5".ref = "flake-pinning";
  inputs."nimgame2-v0_5".dir = "nimpkgs/n/nimgame2/v0_5";
  inputs."nimgame2-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgame2-v0_6".type = "github";
  inputs."nimgame2-v0_6".owner = "riinr";
  inputs."nimgame2-v0_6".repo = "flake-nimble";
  inputs."nimgame2-v0_6".ref = "flake-pinning";
  inputs."nimgame2-v0_6".dir = "nimpkgs/n/nimgame2/v0_6";
  inputs."nimgame2-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgame2-v0_6_1".type = "github";
  inputs."nimgame2-v0_6_1".owner = "riinr";
  inputs."nimgame2-v0_6_1".repo = "flake-nimble";
  inputs."nimgame2-v0_6_1".ref = "flake-pinning";
  inputs."nimgame2-v0_6_1".dir = "nimpkgs/n/nimgame2/v0_6_1";
  inputs."nimgame2-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgame2-v0_6_2".type = "github";
  inputs."nimgame2-v0_6_2".owner = "riinr";
  inputs."nimgame2-v0_6_2".repo = "flake-nimble";
  inputs."nimgame2-v0_6_2".ref = "flake-pinning";
  inputs."nimgame2-v0_6_2".dir = "nimpkgs/n/nimgame2/v0_6_2";
  inputs."nimgame2-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}