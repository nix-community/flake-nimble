{
  description = ''Nim Home Assistant (NimHA) is a hub for combining multiple home automation devices and automating jobs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimha-master".type = "github";
  inputs."nimha-master".owner = "riinr";
  inputs."nimha-master".repo = "flake-nimble";
  inputs."nimha-master".ref = "flake-pinning";
  inputs."nimha-master".dir = "nimpkgs/n/nimha/master";
  inputs."nimha-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimha-v0_3_0".type = "github";
  inputs."nimha-v0_3_0".owner = "riinr";
  inputs."nimha-v0_3_0".repo = "flake-nimble";
  inputs."nimha-v0_3_0".ref = "flake-pinning";
  inputs."nimha-v0_3_0".dir = "nimpkgs/n/nimha/v0_3_0";
  inputs."nimha-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimha-v0_3_1".type = "github";
  inputs."nimha-v0_3_1".owner = "riinr";
  inputs."nimha-v0_3_1".repo = "flake-nimble";
  inputs."nimha-v0_3_1".ref = "flake-pinning";
  inputs."nimha-v0_3_1".dir = "nimpkgs/n/nimha/v0_3_1";
  inputs."nimha-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimha-v0_3_2".type = "github";
  inputs."nimha-v0_3_2".owner = "riinr";
  inputs."nimha-v0_3_2".repo = "flake-nimble";
  inputs."nimha-v0_3_2".ref = "flake-pinning";
  inputs."nimha-v0_3_2".dir = "nimpkgs/n/nimha/v0_3_2";
  inputs."nimha-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimha-v0_3_3".type = "github";
  inputs."nimha-v0_3_3".owner = "riinr";
  inputs."nimha-v0_3_3".repo = "flake-nimble";
  inputs."nimha-v0_3_3".ref = "flake-pinning";
  inputs."nimha-v0_3_3".dir = "nimpkgs/n/nimha/v0_3_3";
  inputs."nimha-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimha-v0_3_5".type = "github";
  inputs."nimha-v0_3_5".owner = "riinr";
  inputs."nimha-v0_3_5".repo = "flake-nimble";
  inputs."nimha-v0_3_5".ref = "flake-pinning";
  inputs."nimha-v0_3_5".dir = "nimpkgs/n/nimha/v0_3_5";
  inputs."nimha-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimha-v0_3_6".type = "github";
  inputs."nimha-v0_3_6".owner = "riinr";
  inputs."nimha-v0_3_6".repo = "flake-nimble";
  inputs."nimha-v0_3_6".ref = "flake-pinning";
  inputs."nimha-v0_3_6".dir = "nimpkgs/n/nimha/v0_3_6";
  inputs."nimha-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimha-v0_4_0".type = "github";
  inputs."nimha-v0_4_0".owner = "riinr";
  inputs."nimha-v0_4_0".repo = "flake-nimble";
  inputs."nimha-v0_4_0".ref = "flake-pinning";
  inputs."nimha-v0_4_0".dir = "nimpkgs/n/nimha/v0_4_0";
  inputs."nimha-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimha-v0_4_1".type = "github";
  inputs."nimha-v0_4_1".owner = "riinr";
  inputs."nimha-v0_4_1".repo = "flake-nimble";
  inputs."nimha-v0_4_1".ref = "flake-pinning";
  inputs."nimha-v0_4_1".dir = "nimpkgs/n/nimha/v0_4_1";
  inputs."nimha-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimha-v0_4_3".type = "github";
  inputs."nimha-v0_4_3".owner = "riinr";
  inputs."nimha-v0_4_3".repo = "flake-nimble";
  inputs."nimha-v0_4_3".ref = "flake-pinning";
  inputs."nimha-v0_4_3".dir = "nimpkgs/n/nimha/v0_4_3";
  inputs."nimha-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimha-v0_4_4".type = "github";
  inputs."nimha-v0_4_4".owner = "riinr";
  inputs."nimha-v0_4_4".repo = "flake-nimble";
  inputs."nimha-v0_4_4".ref = "flake-pinning";
  inputs."nimha-v0_4_4".dir = "nimpkgs/n/nimha/v0_4_4";
  inputs."nimha-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimha-v0_4_5".type = "github";
  inputs."nimha-v0_4_5".owner = "riinr";
  inputs."nimha-v0_4_5".repo = "flake-nimble";
  inputs."nimha-v0_4_5".ref = "flake-pinning";
  inputs."nimha-v0_4_5".dir = "nimpkgs/n/nimha/v0_4_5";
  inputs."nimha-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}