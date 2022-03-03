{
  description = ''NWSync Repository Management utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nwsync-master".type = "github";
  inputs."nwsync-master".owner = "riinr";
  inputs."nwsync-master".repo = "flake-nimble";
  inputs."nwsync-master".ref = "flake-pinning";
  inputs."nwsync-master".dir = "nimpkgs/n/nwsync/master";
  inputs."nwsync-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_1_0".type = "github";
  inputs."nwsync-0_1_0".owner = "riinr";
  inputs."nwsync-0_1_0".repo = "flake-nimble";
  inputs."nwsync-0_1_0".ref = "flake-pinning";
  inputs."nwsync-0_1_0".dir = "nimpkgs/n/nwsync/0_1_0";
  inputs."nwsync-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_1_1".type = "github";
  inputs."nwsync-0_1_1".owner = "riinr";
  inputs."nwsync-0_1_1".repo = "flake-nimble";
  inputs."nwsync-0_1_1".ref = "flake-pinning";
  inputs."nwsync-0_1_1".dir = "nimpkgs/n/nwsync/0_1_1";
  inputs."nwsync-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_1_2".type = "github";
  inputs."nwsync-0_1_2".owner = "riinr";
  inputs."nwsync-0_1_2".repo = "flake-nimble";
  inputs."nwsync-0_1_2".ref = "flake-pinning";
  inputs."nwsync-0_1_2".dir = "nimpkgs/n/nwsync/0_1_2";
  inputs."nwsync-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_1_3".type = "github";
  inputs."nwsync-0_1_3".owner = "riinr";
  inputs."nwsync-0_1_3".repo = "flake-nimble";
  inputs."nwsync-0_1_3".ref = "flake-pinning";
  inputs."nwsync-0_1_3".dir = "nimpkgs/n/nwsync/0_1_3";
  inputs."nwsync-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_2_0".type = "github";
  inputs."nwsync-0_2_0".owner = "riinr";
  inputs."nwsync-0_2_0".repo = "flake-nimble";
  inputs."nwsync-0_2_0".ref = "flake-pinning";
  inputs."nwsync-0_2_0".dir = "nimpkgs/n/nwsync/0_2_0";
  inputs."nwsync-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_2_1".type = "github";
  inputs."nwsync-0_2_1".owner = "riinr";
  inputs."nwsync-0_2_1".repo = "flake-nimble";
  inputs."nwsync-0_2_1".ref = "flake-pinning";
  inputs."nwsync-0_2_1".dir = "nimpkgs/n/nwsync/0_2_1";
  inputs."nwsync-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_2_2".type = "github";
  inputs."nwsync-0_2_2".owner = "riinr";
  inputs."nwsync-0_2_2".repo = "flake-nimble";
  inputs."nwsync-0_2_2".ref = "flake-pinning";
  inputs."nwsync-0_2_2".dir = "nimpkgs/n/nwsync/0_2_2";
  inputs."nwsync-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_2_3".type = "github";
  inputs."nwsync-0_2_3".owner = "riinr";
  inputs."nwsync-0_2_3".repo = "flake-nimble";
  inputs."nwsync-0_2_3".ref = "flake-pinning";
  inputs."nwsync-0_2_3".dir = "nimpkgs/n/nwsync/0_2_3";
  inputs."nwsync-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_2_4".type = "github";
  inputs."nwsync-0_2_4".owner = "riinr";
  inputs."nwsync-0_2_4".repo = "flake-nimble";
  inputs."nwsync-0_2_4".ref = "flake-pinning";
  inputs."nwsync-0_2_4".dir = "nimpkgs/n/nwsync/0_2_4";
  inputs."nwsync-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_2_5".type = "github";
  inputs."nwsync-0_2_5".owner = "riinr";
  inputs."nwsync-0_2_5".repo = "flake-nimble";
  inputs."nwsync-0_2_5".ref = "flake-pinning";
  inputs."nwsync-0_2_5".dir = "nimpkgs/n/nwsync/0_2_5";
  inputs."nwsync-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_2_6".type = "github";
  inputs."nwsync-0_2_6".owner = "riinr";
  inputs."nwsync-0_2_6".repo = "flake-nimble";
  inputs."nwsync-0_2_6".ref = "flake-pinning";
  inputs."nwsync-0_2_6".dir = "nimpkgs/n/nwsync/0_2_6";
  inputs."nwsync-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_3_0".type = "github";
  inputs."nwsync-0_3_0".owner = "riinr";
  inputs."nwsync-0_3_0".repo = "flake-nimble";
  inputs."nwsync-0_3_0".ref = "flake-pinning";
  inputs."nwsync-0_3_0".dir = "nimpkgs/n/nwsync/0_3_0";
  inputs."nwsync-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_3_1".type = "github";
  inputs."nwsync-0_3_1".owner = "riinr";
  inputs."nwsync-0_3_1".repo = "flake-nimble";
  inputs."nwsync-0_3_1".ref = "flake-pinning";
  inputs."nwsync-0_3_1".dir = "nimpkgs/n/nwsync/0_3_1";
  inputs."nwsync-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_3_2".type = "github";
  inputs."nwsync-0_3_2".owner = "riinr";
  inputs."nwsync-0_3_2".repo = "flake-nimble";
  inputs."nwsync-0_3_2".ref = "flake-pinning";
  inputs."nwsync-0_3_2".dir = "nimpkgs/n/nwsync/0_3_2";
  inputs."nwsync-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_4_0".type = "github";
  inputs."nwsync-0_4_0".owner = "riinr";
  inputs."nwsync-0_4_0".repo = "flake-nimble";
  inputs."nwsync-0_4_0".ref = "flake-pinning";
  inputs."nwsync-0_4_0".dir = "nimpkgs/n/nwsync/0_4_0";
  inputs."nwsync-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_4_1".type = "github";
  inputs."nwsync-0_4_1".owner = "riinr";
  inputs."nwsync-0_4_1".repo = "flake-nimble";
  inputs."nwsync-0_4_1".ref = "flake-pinning";
  inputs."nwsync-0_4_1".dir = "nimpkgs/n/nwsync/0_4_1";
  inputs."nwsync-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_4_2".type = "github";
  inputs."nwsync-0_4_2".owner = "riinr";
  inputs."nwsync-0_4_2".repo = "flake-nimble";
  inputs."nwsync-0_4_2".ref = "flake-pinning";
  inputs."nwsync-0_4_2".dir = "nimpkgs/n/nwsync/0_4_2";
  inputs."nwsync-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nwsync-0_4_3".type = "github";
  inputs."nwsync-0_4_3".owner = "riinr";
  inputs."nwsync-0_4_3".repo = "flake-nimble";
  inputs."nwsync-0_4_3".ref = "flake-pinning";
  inputs."nwsync-0_4_3".dir = "nimpkgs/n/nwsync/0_4_3";
  inputs."nwsync-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}