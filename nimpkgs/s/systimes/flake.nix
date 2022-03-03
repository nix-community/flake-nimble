{
  description = ''An alternative DateTime implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."systimes-master".type = "github";
  inputs."systimes-master".owner = "riinr";
  inputs."systimes-master".repo = "flake-nimble";
  inputs."systimes-master".ref = "flake-pinning";
  inputs."systimes-master".dir = "nimpkgs/s/systimes/master";
  inputs."systimes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."systimes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."systimes-v0_2_0".type = "github";
  inputs."systimes-v0_2_0".owner = "riinr";
  inputs."systimes-v0_2_0".repo = "flake-nimble";
  inputs."systimes-v0_2_0".ref = "flake-pinning";
  inputs."systimes-v0_2_0".dir = "nimpkgs/s/systimes/v0_2_0";
  inputs."systimes-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."systimes-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."systimes-v0_2_1".type = "github";
  inputs."systimes-v0_2_1".owner = "riinr";
  inputs."systimes-v0_2_1".repo = "flake-nimble";
  inputs."systimes-v0_2_1".ref = "flake-pinning";
  inputs."systimes-v0_2_1".dir = "nimpkgs/s/systimes/v0_2_1";
  inputs."systimes-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."systimes-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}