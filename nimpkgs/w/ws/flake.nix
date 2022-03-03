{
  description = ''Simple WebSocket library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ws-master".type = "github";
  inputs."ws-master".owner = "riinr";
  inputs."ws-master".repo = "flake-nimble";
  inputs."ws-master".ref = "flake-pinning";
  inputs."ws-master".dir = "nimpkgs/w/ws/master";
  inputs."ws-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ws-0_2_3".type = "github";
  inputs."ws-0_2_3".owner = "riinr";
  inputs."ws-0_2_3".repo = "flake-nimble";
  inputs."ws-0_2_3".ref = "flake-pinning";
  inputs."ws-0_2_3".dir = "nimpkgs/w/ws/0_2_3";
  inputs."ws-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ws-0_3_0".type = "github";
  inputs."ws-0_3_0".owner = "riinr";
  inputs."ws-0_3_0".repo = "flake-nimble";
  inputs."ws-0_3_0".ref = "flake-pinning";
  inputs."ws-0_3_0".dir = "nimpkgs/w/ws/0_3_0";
  inputs."ws-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ws-0_3_1".type = "github";
  inputs."ws-0_3_1".owner = "riinr";
  inputs."ws-0_3_1".repo = "flake-nimble";
  inputs."ws-0_3_1".ref = "flake-pinning";
  inputs."ws-0_3_1".dir = "nimpkgs/w/ws/0_3_1";
  inputs."ws-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ws-0_3_2".type = "github";
  inputs."ws-0_3_2".owner = "riinr";
  inputs."ws-0_3_2".repo = "flake-nimble";
  inputs."ws-0_3_2".ref = "flake-pinning";
  inputs."ws-0_3_2".dir = "nimpkgs/w/ws/0_3_2";
  inputs."ws-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ws-0_3_3".type = "github";
  inputs."ws-0_3_3".owner = "riinr";
  inputs."ws-0_3_3".repo = "flake-nimble";
  inputs."ws-0_3_3".ref = "flake-pinning";
  inputs."ws-0_3_3".dir = "nimpkgs/w/ws/0_3_3";
  inputs."ws-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ws-0_4_0".type = "github";
  inputs."ws-0_4_0".owner = "riinr";
  inputs."ws-0_4_0".repo = "flake-nimble";
  inputs."ws-0_4_0".ref = "flake-pinning";
  inputs."ws-0_4_0".dir = "nimpkgs/w/ws/0_4_0";
  inputs."ws-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ws-0_4_1".type = "github";
  inputs."ws-0_4_1".owner = "riinr";
  inputs."ws-0_4_1".repo = "flake-nimble";
  inputs."ws-0_4_1".ref = "flake-pinning";
  inputs."ws-0_4_1".dir = "nimpkgs/w/ws/0_4_1";
  inputs."ws-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ws-0_4_2".type = "github";
  inputs."ws-0_4_2".owner = "riinr";
  inputs."ws-0_4_2".repo = "flake-nimble";
  inputs."ws-0_4_2".ref = "flake-pinning";
  inputs."ws-0_4_2".dir = "nimpkgs/w/ws/0_4_2";
  inputs."ws-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ws-0_4_3".type = "github";
  inputs."ws-0_4_3".owner = "riinr";
  inputs."ws-0_4_3".repo = "flake-nimble";
  inputs."ws-0_4_3".ref = "flake-pinning";
  inputs."ws-0_4_3".dir = "nimpkgs/w/ws/0_4_3";
  inputs."ws-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ws-0_4_4".type = "github";
  inputs."ws-0_4_4".owner = "riinr";
  inputs."ws-0_4_4".repo = "flake-nimble";
  inputs."ws-0_4_4".ref = "flake-pinning";
  inputs."ws-0_4_4".dir = "nimpkgs/w/ws/0_4_4";
  inputs."ws-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ws-0_5_0".type = "github";
  inputs."ws-0_5_0".owner = "riinr";
  inputs."ws-0_5_0".repo = "flake-nimble";
  inputs."ws-0_5_0".ref = "flake-pinning";
  inputs."ws-0_5_0".dir = "nimpkgs/w/ws/0_5_0";
  inputs."ws-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ws-v0_4_0".type = "github";
  inputs."ws-v0_4_0".owner = "riinr";
  inputs."ws-v0_4_0".repo = "flake-nimble";
  inputs."ws-v0_4_0".ref = "flake-pinning";
  inputs."ws-v0_4_0".dir = "nimpkgs/w/ws/v0_4_0";
  inputs."ws-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}