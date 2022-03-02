{
  description = ''Print fabulously in your terminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fab-master".type = "github";
  inputs."fab-master".owner = "riinr";
  inputs."fab-master".repo = "flake-nimble";
  inputs."fab-master".ref = "flake-pinning";
  inputs."fab-master".dir = "nimpkgs/f/fab/master";
  inputs."fab-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fab-v0_1_0".type = "github";
  inputs."fab-v0_1_0".owner = "riinr";
  inputs."fab-v0_1_0".repo = "flake-nimble";
  inputs."fab-v0_1_0".ref = "flake-pinning";
  inputs."fab-v0_1_0".dir = "nimpkgs/f/fab/v0_1_0";
  inputs."fab-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fab-v0_2_0".type = "github";
  inputs."fab-v0_2_0".owner = "riinr";
  inputs."fab-v0_2_0".repo = "flake-nimble";
  inputs."fab-v0_2_0".ref = "flake-pinning";
  inputs."fab-v0_2_0".dir = "nimpkgs/f/fab/v0_2_0";
  inputs."fab-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fab-v0_3_0".type = "github";
  inputs."fab-v0_3_0".owner = "riinr";
  inputs."fab-v0_3_0".repo = "flake-nimble";
  inputs."fab-v0_3_0".ref = "flake-pinning";
  inputs."fab-v0_3_0".dir = "nimpkgs/f/fab/v0_3_0";
  inputs."fab-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fab-v0_3_1".type = "github";
  inputs."fab-v0_3_1".owner = "riinr";
  inputs."fab-v0_3_1".repo = "flake-nimble";
  inputs."fab-v0_3_1".ref = "flake-pinning";
  inputs."fab-v0_3_1".dir = "nimpkgs/f/fab/v0_3_1";
  inputs."fab-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fab-v0_4_0".type = "github";
  inputs."fab-v0_4_0".owner = "riinr";
  inputs."fab-v0_4_0".repo = "flake-nimble";
  inputs."fab-v0_4_0".ref = "flake-pinning";
  inputs."fab-v0_4_0".dir = "nimpkgs/f/fab/v0_4_0";
  inputs."fab-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fab-v0_4_1".type = "github";
  inputs."fab-v0_4_1".owner = "riinr";
  inputs."fab-v0_4_1".repo = "flake-nimble";
  inputs."fab-v0_4_1".ref = "flake-pinning";
  inputs."fab-v0_4_1".dir = "nimpkgs/f/fab/v0_4_1";
  inputs."fab-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fab-v0_4_2".type = "github";
  inputs."fab-v0_4_2".owner = "riinr";
  inputs."fab-v0_4_2".repo = "flake-nimble";
  inputs."fab-v0_4_2".ref = "flake-pinning";
  inputs."fab-v0_4_2".dir = "nimpkgs/f/fab/v0_4_2";
  inputs."fab-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fab-v0_4_3".type = "github";
  inputs."fab-v0_4_3".owner = "riinr";
  inputs."fab-v0_4_3".repo = "flake-nimble";
  inputs."fab-v0_4_3".ref = "flake-pinning";
  inputs."fab-v0_4_3".dir = "nimpkgs/f/fab/v0_4_3";
  inputs."fab-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fab-v0_4_4".type = "github";
  inputs."fab-v0_4_4".owner = "riinr";
  inputs."fab-v0_4_4".repo = "flake-nimble";
  inputs."fab-v0_4_4".ref = "flake-pinning";
  inputs."fab-v0_4_4".dir = "nimpkgs/f/fab/v0_4_4";
  inputs."fab-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}