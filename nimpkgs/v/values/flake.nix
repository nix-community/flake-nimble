{
  description = ''Library for working with arbitrary values + a map data structure.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."values-master".type = "github";
  inputs."values-master".owner = "riinr";
  inputs."values-master".repo = "flake-nimble";
  inputs."values-master".ref = "flake-pinning";
  inputs."values-master".dir = "nimpkgs/v/values/master";
  inputs."values-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."values-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."values-0_1_1".type = "github";
  inputs."values-0_1_1".owner = "riinr";
  inputs."values-0_1_1".repo = "flake-nimble";
  inputs."values-0_1_1".ref = "flake-pinning";
  inputs."values-0_1_1".dir = "nimpkgs/v/values/0_1_1";
  inputs."values-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."values-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."values-v0_1_0".type = "github";
  inputs."values-v0_1_0".owner = "riinr";
  inputs."values-v0_1_0".repo = "flake-nimble";
  inputs."values-v0_1_0".ref = "flake-pinning";
  inputs."values-v0_1_0".dir = "nimpkgs/v/values/v0_1_0";
  inputs."values-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."values-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}