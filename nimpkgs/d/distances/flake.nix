{
  description = ''Distances is a high performance Nim library for calculating distances.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."distances-master".type = "github";
  inputs."distances-master".owner = "riinr";
  inputs."distances-master".repo = "flake-nimble";
  inputs."distances-master".ref = "flake-pinning";
  inputs."distances-master".dir = "nimpkgs/d/distances/master";
  inputs."distances-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distances-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."distances-v0_1_0".type = "github";
  inputs."distances-v0_1_0".owner = "riinr";
  inputs."distances-v0_1_0".repo = "flake-nimble";
  inputs."distances-v0_1_0".ref = "flake-pinning";
  inputs."distances-v0_1_0".dir = "nimpkgs/d/distances/v0_1_0";
  inputs."distances-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distances-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."distances-v0_1_1".type = "github";
  inputs."distances-v0_1_1".owner = "riinr";
  inputs."distances-v0_1_1".repo = "flake-nimble";
  inputs."distances-v0_1_1".ref = "flake-pinning";
  inputs."distances-v0_1_1".dir = "nimpkgs/d/distances/v0_1_1";
  inputs."distances-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distances-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}