{
  description = ''Color management utility for X'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xcm-master".type = "github";
  inputs."xcm-master".owner = "riinr";
  inputs."xcm-master".repo = "flake-nimble";
  inputs."xcm-master".ref = "flake-pinning";
  inputs."xcm-master".dir = "nimpkgs/x/xcm/master";
  inputs."xcm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xcm-v0_1_0".type = "github";
  inputs."xcm-v0_1_0".owner = "riinr";
  inputs."xcm-v0_1_0".repo = "flake-nimble";
  inputs."xcm-v0_1_0".ref = "flake-pinning";
  inputs."xcm-v0_1_0".dir = "nimpkgs/x/xcm/v0_1_0";
  inputs."xcm-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcm-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xcm-v0_1_1".type = "github";
  inputs."xcm-v0_1_1".owner = "riinr";
  inputs."xcm-v0_1_1".repo = "flake-nimble";
  inputs."xcm-v0_1_1".ref = "flake-pinning";
  inputs."xcm-v0_1_1".dir = "nimpkgs/x/xcm/v0_1_1";
  inputs."xcm-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcm-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}