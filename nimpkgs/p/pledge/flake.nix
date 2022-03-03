{
  description = ''OpenBSDs pledge(2) for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pledge-master".type = "github";
  inputs."pledge-master".owner = "riinr";
  inputs."pledge-master".repo = "flake-nimble";
  inputs."pledge-master".ref = "flake-pinning";
  inputs."pledge-master".dir = "nimpkgs/p/pledge/master";
  inputs."pledge-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pledge-v1_0_0".type = "github";
  inputs."pledge-v1_0_0".owner = "riinr";
  inputs."pledge-v1_0_0".repo = "flake-nimble";
  inputs."pledge-v1_0_0".ref = "flake-pinning";
  inputs."pledge-v1_0_0".dir = "nimpkgs/p/pledge/v1_0_0";
  inputs."pledge-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pledge-v1_0_1".type = "github";
  inputs."pledge-v1_0_1".owner = "riinr";
  inputs."pledge-v1_0_1".repo = "flake-nimble";
  inputs."pledge-v1_0_1".ref = "flake-pinning";
  inputs."pledge-v1_0_1".dir = "nimpkgs/p/pledge/v1_0_1";
  inputs."pledge-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pledge-v1_0_2".type = "github";
  inputs."pledge-v1_0_2".owner = "riinr";
  inputs."pledge-v1_0_2".repo = "flake-nimble";
  inputs."pledge-v1_0_2".ref = "flake-pinning";
  inputs."pledge-v1_0_2".dir = "nimpkgs/p/pledge/v1_0_2";
  inputs."pledge-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pledge-v1_1_0".type = "github";
  inputs."pledge-v1_1_0".owner = "riinr";
  inputs."pledge-v1_1_0".repo = "flake-nimble";
  inputs."pledge-v1_1_0".ref = "flake-pinning";
  inputs."pledge-v1_1_0".dir = "nimpkgs/p/pledge/v1_1_0";
  inputs."pledge-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pledge-v1_1_1".type = "github";
  inputs."pledge-v1_1_1".owner = "riinr";
  inputs."pledge-v1_1_1".repo = "flake-nimble";
  inputs."pledge-v1_1_1".ref = "flake-pinning";
  inputs."pledge-v1_1_1".dir = "nimpkgs/p/pledge/v1_1_1";
  inputs."pledge-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pledge-v2_0_0".type = "github";
  inputs."pledge-v2_0_0".owner = "riinr";
  inputs."pledge-v2_0_0".repo = "flake-nimble";
  inputs."pledge-v2_0_0".ref = "flake-pinning";
  inputs."pledge-v2_0_0".dir = "nimpkgs/p/pledge/v2_0_0";
  inputs."pledge-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pledge-v2_0_1".type = "github";
  inputs."pledge-v2_0_1".owner = "riinr";
  inputs."pledge-v2_0_1".repo = "flake-nimble";
  inputs."pledge-v2_0_1".ref = "flake-pinning";
  inputs."pledge-v2_0_1".dir = "nimpkgs/p/pledge/v2_0_1";
  inputs."pledge-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}