{
  description = ''A 3d sound API for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."slappy-master".type = "github";
  inputs."slappy-master".owner = "riinr";
  inputs."slappy-master".repo = "flake-nimble";
  inputs."slappy-master".ref = "flake-pinning";
  inputs."slappy-master".dir = "nimpkgs/s/slappy/master";
  inputs."slappy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slappy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slappy-0_3_0".type = "github";
  inputs."slappy-0_3_0".owner = "riinr";
  inputs."slappy-0_3_0".repo = "flake-nimble";
  inputs."slappy-0_3_0".ref = "flake-pinning";
  inputs."slappy-0_3_0".dir = "nimpkgs/s/slappy/0_3_0";
  inputs."slappy-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slappy-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slappy-0_3_1".type = "github";
  inputs."slappy-0_3_1".owner = "riinr";
  inputs."slappy-0_3_1".repo = "flake-nimble";
  inputs."slappy-0_3_1".ref = "flake-pinning";
  inputs."slappy-0_3_1".dir = "nimpkgs/s/slappy/0_3_1";
  inputs."slappy-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slappy-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slappy-v0_1_0".type = "github";
  inputs."slappy-v0_1_0".owner = "riinr";
  inputs."slappy-v0_1_0".repo = "flake-nimble";
  inputs."slappy-v0_1_0".ref = "flake-pinning";
  inputs."slappy-v0_1_0".dir = "nimpkgs/s/slappy/v0_1_0";
  inputs."slappy-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slappy-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."slappy-v0_2_0".type = "github";
  inputs."slappy-v0_2_0".owner = "riinr";
  inputs."slappy-v0_2_0".repo = "flake-nimble";
  inputs."slappy-v0_2_0".ref = "flake-pinning";
  inputs."slappy-v0_2_0".dir = "nimpkgs/s/slappy/v0_2_0";
  inputs."slappy-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slappy-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}