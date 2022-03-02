{
  description = ''Binary serialization framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bingo-master".type = "github";
  inputs."bingo-master".owner = "riinr";
  inputs."bingo-master".repo = "flake-nimble";
  inputs."bingo-master".ref = "flake-pinning";
  inputs."bingo-master".dir = "nimpkgs/b/bingo/master";
  inputs."bingo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bingo-v0_0_1".type = "github";
  inputs."bingo-v0_0_1".owner = "riinr";
  inputs."bingo-v0_0_1".repo = "flake-nimble";
  inputs."bingo-v0_0_1".ref = "flake-pinning";
  inputs."bingo-v0_0_1".dir = "nimpkgs/b/bingo/v0_0_1";
  inputs."bingo-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bingo-v0_1_0".type = "github";
  inputs."bingo-v0_1_0".owner = "riinr";
  inputs."bingo-v0_1_0".repo = "flake-nimble";
  inputs."bingo-v0_1_0".ref = "flake-pinning";
  inputs."bingo-v0_1_0".dir = "nimpkgs/b/bingo/v0_1_0";
  inputs."bingo-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bingo-v0_2_0".type = "github";
  inputs."bingo-v0_2_0".owner = "riinr";
  inputs."bingo-v0_2_0".repo = "flake-nimble";
  inputs."bingo-v0_2_0".ref = "flake-pinning";
  inputs."bingo-v0_2_0".dir = "nimpkgs/b/bingo/v0_2_0";
  inputs."bingo-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bingo-v0_2_1".type = "github";
  inputs."bingo-v0_2_1".owner = "riinr";
  inputs."bingo-v0_2_1".repo = "flake-nimble";
  inputs."bingo-v0_2_1".ref = "flake-pinning";
  inputs."bingo-v0_2_1".dir = "nimpkgs/b/bingo/v0_2_1";
  inputs."bingo-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bingo-v0_3_0".type = "github";
  inputs."bingo-v0_3_0".owner = "riinr";
  inputs."bingo-v0_3_0".repo = "flake-nimble";
  inputs."bingo-v0_3_0".ref = "flake-pinning";
  inputs."bingo-v0_3_0".dir = "nimpkgs/b/bingo/v0_3_0";
  inputs."bingo-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bingo-v0_4_0".type = "github";
  inputs."bingo-v0_4_0".owner = "riinr";
  inputs."bingo-v0_4_0".repo = "flake-nimble";
  inputs."bingo-v0_4_0".ref = "flake-pinning";
  inputs."bingo-v0_4_0".dir = "nimpkgs/b/bingo/v0_4_0";
  inputs."bingo-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bingo-v0_4_1".type = "github";
  inputs."bingo-v0_4_1".owner = "riinr";
  inputs."bingo-v0_4_1".repo = "flake-nimble";
  inputs."bingo-v0_4_1".ref = "flake-pinning";
  inputs."bingo-v0_4_1".dir = "nimpkgs/b/bingo/v0_4_1";
  inputs."bingo-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}