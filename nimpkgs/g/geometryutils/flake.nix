{
  description = ''A collection of geometry utilities for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."geometryutils-master".type = "github";
  inputs."geometryutils-master".owner = "riinr";
  inputs."geometryutils-master".repo = "flake-nimble";
  inputs."geometryutils-master".ref = "flake-pinning";
  inputs."geometryutils-master".dir = "nimpkgs/g/geometryutils/master";
  inputs."geometryutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geometryutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."geometryutils-v1_1_0".type = "github";
  inputs."geometryutils-v1_1_0".owner = "riinr";
  inputs."geometryutils-v1_1_0".repo = "flake-nimble";
  inputs."geometryutils-v1_1_0".ref = "flake-pinning";
  inputs."geometryutils-v1_1_0".dir = "nimpkgs/g/geometryutils/v1_1_0";
  inputs."geometryutils-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geometryutils-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."geometryutils-v1_2_0".type = "github";
  inputs."geometryutils-v1_2_0".owner = "riinr";
  inputs."geometryutils-v1_2_0".repo = "flake-nimble";
  inputs."geometryutils-v1_2_0".ref = "flake-pinning";
  inputs."geometryutils-v1_2_0".dir = "nimpkgs/g/geometryutils/v1_2_0";
  inputs."geometryutils-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geometryutils-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}