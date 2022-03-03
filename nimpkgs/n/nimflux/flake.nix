{
  description = ''InfluxDB API client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimflux-master".type = "github";
  inputs."nimflux-master".owner = "riinr";
  inputs."nimflux-master".repo = "flake-nimble";
  inputs."nimflux-master".ref = "flake-pinning";
  inputs."nimflux-master".dir = "nimpkgs/n/nimflux/master";
  inputs."nimflux-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimflux-v0_1_0".type = "github";
  inputs."nimflux-v0_1_0".owner = "riinr";
  inputs."nimflux-v0_1_0".repo = "flake-nimble";
  inputs."nimflux-v0_1_0".ref = "flake-pinning";
  inputs."nimflux-v0_1_0".dir = "nimpkgs/n/nimflux/v0_1_0";
  inputs."nimflux-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimflux-v0_1_1".type = "github";
  inputs."nimflux-v0_1_1".owner = "riinr";
  inputs."nimflux-v0_1_1".repo = "flake-nimble";
  inputs."nimflux-v0_1_1".ref = "flake-pinning";
  inputs."nimflux-v0_1_1".dir = "nimpkgs/n/nimflux/v0_1_1";
  inputs."nimflux-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimflux-v0_1_2".type = "github";
  inputs."nimflux-v0_1_2".owner = "riinr";
  inputs."nimflux-v0_1_2".repo = "flake-nimble";
  inputs."nimflux-v0_1_2".ref = "flake-pinning";
  inputs."nimflux-v0_1_2".dir = "nimpkgs/n/nimflux/v0_1_2";
  inputs."nimflux-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimflux-v0_1_3".type = "github";
  inputs."nimflux-v0_1_3".owner = "riinr";
  inputs."nimflux-v0_1_3".repo = "flake-nimble";
  inputs."nimflux-v0_1_3".ref = "flake-pinning";
  inputs."nimflux-v0_1_3".dir = "nimpkgs/n/nimflux/v0_1_3";
  inputs."nimflux-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimflux-v1_0_0".type = "github";
  inputs."nimflux-v1_0_0".owner = "riinr";
  inputs."nimflux-v1_0_0".repo = "flake-nimble";
  inputs."nimflux-v1_0_0".ref = "flake-pinning";
  inputs."nimflux-v1_0_0".dir = "nimpkgs/n/nimflux/v1_0_0";
  inputs."nimflux-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimflux-v1_0_1".type = "github";
  inputs."nimflux-v1_0_1".owner = "riinr";
  inputs."nimflux-v1_0_1".repo = "flake-nimble";
  inputs."nimflux-v1_0_1".ref = "flake-pinning";
  inputs."nimflux-v1_0_1".dir = "nimpkgs/n/nimflux/v1_0_1";
  inputs."nimflux-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimflux-v1_0_2".type = "github";
  inputs."nimflux-v1_0_2".owner = "riinr";
  inputs."nimflux-v1_0_2".repo = "flake-nimble";
  inputs."nimflux-v1_0_2".ref = "flake-pinning";
  inputs."nimflux-v1_0_2".dir = "nimpkgs/n/nimflux/v1_0_2";
  inputs."nimflux-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimflux-v1_0_3".type = "github";
  inputs."nimflux-v1_0_3".owner = "riinr";
  inputs."nimflux-v1_0_3".repo = "flake-nimble";
  inputs."nimflux-v1_0_3".ref = "flake-pinning";
  inputs."nimflux-v1_0_3".dir = "nimpkgs/n/nimflux/v1_0_3";
  inputs."nimflux-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}