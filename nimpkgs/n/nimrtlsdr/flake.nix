{
  description = ''A Nim wrapper for librtlsdr'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimrtlsdr-develop".type = "github";
  inputs."nimrtlsdr-develop".owner = "riinr";
  inputs."nimrtlsdr-develop".repo = "flake-nimble";
  inputs."nimrtlsdr-develop".ref = "flake-pinning";
  inputs."nimrtlsdr-develop".dir = "nimpkgs/n/nimrtlsdr/develop";
  inputs."nimrtlsdr-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimrtlsdr-master".type = "github";
  inputs."nimrtlsdr-master".owner = "riinr";
  inputs."nimrtlsdr-master".repo = "flake-nimble";
  inputs."nimrtlsdr-master".ref = "flake-pinning";
  inputs."nimrtlsdr-master".dir = "nimpkgs/n/nimrtlsdr/master";
  inputs."nimrtlsdr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimrtlsdr-v0_1".type = "github";
  inputs."nimrtlsdr-v0_1".owner = "riinr";
  inputs."nimrtlsdr-v0_1".repo = "flake-nimble";
  inputs."nimrtlsdr-v0_1".ref = "flake-pinning";
  inputs."nimrtlsdr-v0_1".dir = "nimpkgs/n/nimrtlsdr/v0_1";
  inputs."nimrtlsdr-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimrtlsdr-v0_1_1".type = "github";
  inputs."nimrtlsdr-v0_1_1".owner = "riinr";
  inputs."nimrtlsdr-v0_1_1".repo = "flake-nimble";
  inputs."nimrtlsdr-v0_1_1".ref = "flake-pinning";
  inputs."nimrtlsdr-v0_1_1".dir = "nimpkgs/n/nimrtlsdr/v0_1_1";
  inputs."nimrtlsdr-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimrtlsdr-v0_1_2".type = "github";
  inputs."nimrtlsdr-v0_1_2".owner = "riinr";
  inputs."nimrtlsdr-v0_1_2".repo = "flake-nimble";
  inputs."nimrtlsdr-v0_1_2".ref = "flake-pinning";
  inputs."nimrtlsdr-v0_1_2".dir = "nimpkgs/n/nimrtlsdr/v0_1_2";
  inputs."nimrtlsdr-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimrtlsdr-v0_1_3".type = "github";
  inputs."nimrtlsdr-v0_1_3".owner = "riinr";
  inputs."nimrtlsdr-v0_1_3".repo = "flake-nimble";
  inputs."nimrtlsdr-v0_1_3".ref = "flake-pinning";
  inputs."nimrtlsdr-v0_1_3".dir = "nimpkgs/n/nimrtlsdr/v0_1_3";
  inputs."nimrtlsdr-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimrtlsdr-v0_1_4".type = "github";
  inputs."nimrtlsdr-v0_1_4".owner = "riinr";
  inputs."nimrtlsdr-v0_1_4".repo = "flake-nimble";
  inputs."nimrtlsdr-v0_1_4".ref = "flake-pinning";
  inputs."nimrtlsdr-v0_1_4".dir = "nimpkgs/n/nimrtlsdr/v0_1_4";
  inputs."nimrtlsdr-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}