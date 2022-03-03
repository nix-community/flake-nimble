{
  description = ''Scraping API for www.nordnet.dk ready to integrate with Home Assistant (Hassio)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nordnet-master".type = "github";
  inputs."nordnet-master".owner = "riinr";
  inputs."nordnet-master".repo = "flake-nimble";
  inputs."nordnet-master".ref = "flake-pinning";
  inputs."nordnet-master".dir = "nimpkgs/n/nordnet/master";
  inputs."nordnet-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nordnet-v0_0_1".type = "github";
  inputs."nordnet-v0_0_1".owner = "riinr";
  inputs."nordnet-v0_0_1".repo = "flake-nimble";
  inputs."nordnet-v0_0_1".ref = "flake-pinning";
  inputs."nordnet-v0_0_1".dir = "nimpkgs/n/nordnet/v0_0_1";
  inputs."nordnet-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nordnet-v0_0_2".type = "github";
  inputs."nordnet-v0_0_2".owner = "riinr";
  inputs."nordnet-v0_0_2".repo = "flake-nimble";
  inputs."nordnet-v0_0_2".ref = "flake-pinning";
  inputs."nordnet-v0_0_2".dir = "nimpkgs/n/nordnet/v0_0_2";
  inputs."nordnet-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nordnet-v0_0_3".type = "github";
  inputs."nordnet-v0_0_3".owner = "riinr";
  inputs."nordnet-v0_0_3".repo = "flake-nimble";
  inputs."nordnet-v0_0_3".ref = "flake-pinning";
  inputs."nordnet-v0_0_3".dir = "nimpkgs/n/nordnet/v0_0_3";
  inputs."nordnet-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nordnet-v0_0_4".type = "github";
  inputs."nordnet-v0_0_4".owner = "riinr";
  inputs."nordnet-v0_0_4".repo = "flake-nimble";
  inputs."nordnet-v0_0_4".ref = "flake-pinning";
  inputs."nordnet-v0_0_4".dir = "nimpkgs/n/nordnet/v0_0_4";
  inputs."nordnet-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nordnet-v0_0_5".type = "github";
  inputs."nordnet-v0_0_5".owner = "riinr";
  inputs."nordnet-v0_0_5".repo = "flake-nimble";
  inputs."nordnet-v0_0_5".ref = "flake-pinning";
  inputs."nordnet-v0_0_5".dir = "nimpkgs/n/nordnet/v0_0_5";
  inputs."nordnet-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nordnet-v0_0_6".type = "github";
  inputs."nordnet-v0_0_6".owner = "riinr";
  inputs."nordnet-v0_0_6".repo = "flake-nimble";
  inputs."nordnet-v0_0_6".ref = "flake-pinning";
  inputs."nordnet-v0_0_6".dir = "nimpkgs/n/nordnet/v0_0_6";
  inputs."nordnet-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nordnet-v0_0_7".type = "github";
  inputs."nordnet-v0_0_7".owner = "riinr";
  inputs."nordnet-v0_0_7".repo = "flake-nimble";
  inputs."nordnet-v0_0_7".ref = "flake-pinning";
  inputs."nordnet-v0_0_7".dir = "nimpkgs/n/nordnet/v0_0_7";
  inputs."nordnet-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}