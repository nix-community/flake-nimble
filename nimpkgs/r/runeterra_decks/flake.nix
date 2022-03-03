{
  description = ''Legends of Runeterra deck/card code encoder/decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."runeterra_decks-master".type = "github";
  inputs."runeterra_decks-master".owner = "riinr";
  inputs."runeterra_decks-master".repo = "flake-nimble";
  inputs."runeterra_decks-master".ref = "flake-pinning";
  inputs."runeterra_decks-master".dir = "nimpkgs/r/runeterra_decks/master";
  inputs."runeterra_decks-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."runeterra_decks-v0_1_0".type = "github";
  inputs."runeterra_decks-v0_1_0".owner = "riinr";
  inputs."runeterra_decks-v0_1_0".repo = "flake-nimble";
  inputs."runeterra_decks-v0_1_0".ref = "flake-pinning";
  inputs."runeterra_decks-v0_1_0".dir = "nimpkgs/r/runeterra_decks/v0_1_0";
  inputs."runeterra_decks-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."runeterra_decks-v0_2_0".type = "github";
  inputs."runeterra_decks-v0_2_0".owner = "riinr";
  inputs."runeterra_decks-v0_2_0".repo = "flake-nimble";
  inputs."runeterra_decks-v0_2_0".ref = "flake-pinning";
  inputs."runeterra_decks-v0_2_0".dir = "nimpkgs/r/runeterra_decks/v0_2_0";
  inputs."runeterra_decks-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."runeterra_decks-v0_2_1".type = "github";
  inputs."runeterra_decks-v0_2_1".owner = "riinr";
  inputs."runeterra_decks-v0_2_1".repo = "flake-nimble";
  inputs."runeterra_decks-v0_2_1".ref = "flake-pinning";
  inputs."runeterra_decks-v0_2_1".dir = "nimpkgs/r/runeterra_decks/v0_2_1";
  inputs."runeterra_decks-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."runeterra_decks-v0_2_2".type = "github";
  inputs."runeterra_decks-v0_2_2".owner = "riinr";
  inputs."runeterra_decks-v0_2_2".repo = "flake-nimble";
  inputs."runeterra_decks-v0_2_2".ref = "flake-pinning";
  inputs."runeterra_decks-v0_2_2".dir = "nimpkgs/r/runeterra_decks/v0_2_2";
  inputs."runeterra_decks-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."runeterra_decks-v0_2_3".type = "github";
  inputs."runeterra_decks-v0_2_3".owner = "riinr";
  inputs."runeterra_decks-v0_2_3".repo = "flake-nimble";
  inputs."runeterra_decks-v0_2_3".ref = "flake-pinning";
  inputs."runeterra_decks-v0_2_3".dir = "nimpkgs/r/runeterra_decks/v0_2_3";
  inputs."runeterra_decks-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."runeterra_decks-v0_4_0".type = "github";
  inputs."runeterra_decks-v0_4_0".owner = "riinr";
  inputs."runeterra_decks-v0_4_0".repo = "flake-nimble";
  inputs."runeterra_decks-v0_4_0".ref = "flake-pinning";
  inputs."runeterra_decks-v0_4_0".dir = "nimpkgs/r/runeterra_decks/v0_4_0";
  inputs."runeterra_decks-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."runeterra_decks-v0_5_0".type = "github";
  inputs."runeterra_decks-v0_5_0".owner = "riinr";
  inputs."runeterra_decks-v0_5_0".repo = "flake-nimble";
  inputs."runeterra_decks-v0_5_0".ref = "flake-pinning";
  inputs."runeterra_decks-v0_5_0".dir = "nimpkgs/r/runeterra_decks/v0_5_0";
  inputs."runeterra_decks-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."runeterra_decks-v0_5_1".type = "github";
  inputs."runeterra_decks-v0_5_1".owner = "riinr";
  inputs."runeterra_decks-v0_5_1".repo = "flake-nimble";
  inputs."runeterra_decks-v0_5_1".ref = "flake-pinning";
  inputs."runeterra_decks-v0_5_1".dir = "nimpkgs/r/runeterra_decks/v0_5_1";
  inputs."runeterra_decks-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."runeterra_decks-v0_6_0".type = "github";
  inputs."runeterra_decks-v0_6_0".owner = "riinr";
  inputs."runeterra_decks-v0_6_0".repo = "flake-nimble";
  inputs."runeterra_decks-v0_6_0".ref = "flake-pinning";
  inputs."runeterra_decks-v0_6_0".dir = "nimpkgs/r/runeterra_decks/v0_6_0";
  inputs."runeterra_decks-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."runeterra_decks-v0_6_1".type = "github";
  inputs."runeterra_decks-v0_6_1".owner = "riinr";
  inputs."runeterra_decks-v0_6_1".repo = "flake-nimble";
  inputs."runeterra_decks-v0_6_1".ref = "flake-pinning";
  inputs."runeterra_decks-v0_6_1".dir = "nimpkgs/r/runeterra_decks/v0_6_1";
  inputs."runeterra_decks-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}