{
  description = ''MPD client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mpdclient-master".type = "github";
  inputs."mpdclient-master".owner = "riinr";
  inputs."mpdclient-master".repo = "flake-nimble";
  inputs."mpdclient-master".ref = "flake-pinning";
  inputs."mpdclient-master".dir = "nimpkgs/m/mpdclient/master";
  inputs."mpdclient-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpdclient-v0_1_0".type = "github";
  inputs."mpdclient-v0_1_0".owner = "riinr";
  inputs."mpdclient-v0_1_0".repo = "flake-nimble";
  inputs."mpdclient-v0_1_0".ref = "flake-pinning";
  inputs."mpdclient-v0_1_0".dir = "nimpkgs/m/mpdclient/v0_1_0";
  inputs."mpdclient-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpdclient-v0_1_1".type = "github";
  inputs."mpdclient-v0_1_1".owner = "riinr";
  inputs."mpdclient-v0_1_1".repo = "flake-nimble";
  inputs."mpdclient-v0_1_1".ref = "flake-pinning";
  inputs."mpdclient-v0_1_1".dir = "nimpkgs/m/mpdclient/v0_1_1";
  inputs."mpdclient-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpdclient-v0_1_2".type = "github";
  inputs."mpdclient-v0_1_2".owner = "riinr";
  inputs."mpdclient-v0_1_2".repo = "flake-nimble";
  inputs."mpdclient-v0_1_2".ref = "flake-pinning";
  inputs."mpdclient-v0_1_2".dir = "nimpkgs/m/mpdclient/v0_1_2";
  inputs."mpdclient-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpdclient-v0_1_3".type = "github";
  inputs."mpdclient-v0_1_3".owner = "riinr";
  inputs."mpdclient-v0_1_3".repo = "flake-nimble";
  inputs."mpdclient-v0_1_3".ref = "flake-pinning";
  inputs."mpdclient-v0_1_3".dir = "nimpkgs/m/mpdclient/v0_1_3";
  inputs."mpdclient-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpdclient-v0_1_4".type = "github";
  inputs."mpdclient-v0_1_4".owner = "riinr";
  inputs."mpdclient-v0_1_4".repo = "flake-nimble";
  inputs."mpdclient-v0_1_4".ref = "flake-pinning";
  inputs."mpdclient-v0_1_4".dir = "nimpkgs/m/mpdclient/v0_1_4";
  inputs."mpdclient-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpdclient-v0_1_5".type = "github";
  inputs."mpdclient-v0_1_5".owner = "riinr";
  inputs."mpdclient-v0_1_5".repo = "flake-nimble";
  inputs."mpdclient-v0_1_5".ref = "flake-pinning";
  inputs."mpdclient-v0_1_5".dir = "nimpkgs/m/mpdclient/v0_1_5";
  inputs."mpdclient-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpdclient-v0_1_6".type = "github";
  inputs."mpdclient-v0_1_6".owner = "riinr";
  inputs."mpdclient-v0_1_6".repo = "flake-nimble";
  inputs."mpdclient-v0_1_6".ref = "flake-pinning";
  inputs."mpdclient-v0_1_6".dir = "nimpkgs/m/mpdclient/v0_1_6";
  inputs."mpdclient-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpdclient-v0_1_7".type = "github";
  inputs."mpdclient-v0_1_7".owner = "riinr";
  inputs."mpdclient-v0_1_7".repo = "flake-nimble";
  inputs."mpdclient-v0_1_7".ref = "flake-pinning";
  inputs."mpdclient-v0_1_7".dir = "nimpkgs/m/mpdclient/v0_1_7";
  inputs."mpdclient-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpdclient-v0_2_0".type = "github";
  inputs."mpdclient-v0_2_0".owner = "riinr";
  inputs."mpdclient-v0_2_0".repo = "flake-nimble";
  inputs."mpdclient-v0_2_0".ref = "flake-pinning";
  inputs."mpdclient-v0_2_0".dir = "nimpkgs/m/mpdclient/v0_2_0";
  inputs."mpdclient-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpdclient-v0_2_1".type = "github";
  inputs."mpdclient-v0_2_1".owner = "riinr";
  inputs."mpdclient-v0_2_1".repo = "flake-nimble";
  inputs."mpdclient-v0_2_1".ref = "flake-pinning";
  inputs."mpdclient-v0_2_1".dir = "nimpkgs/m/mpdclient/v0_2_1";
  inputs."mpdclient-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpdclient-v0_2_2".type = "github";
  inputs."mpdclient-v0_2_2".owner = "riinr";
  inputs."mpdclient-v0_2_2".repo = "flake-nimble";
  inputs."mpdclient-v0_2_2".ref = "flake-pinning";
  inputs."mpdclient-v0_2_2".dir = "nimpkgs/m/mpdclient/v0_2_2";
  inputs."mpdclient-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mpdclient-v0_3_0".type = "github";
  inputs."mpdclient-v0_3_0".owner = "riinr";
  inputs."mpdclient-v0_3_0".repo = "flake-nimble";
  inputs."mpdclient-v0_3_0".ref = "flake-pinning";
  inputs."mpdclient-v0_3_0".dir = "nimpkgs/m/mpdclient/v0_3_0";
  inputs."mpdclient-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpdclient-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}