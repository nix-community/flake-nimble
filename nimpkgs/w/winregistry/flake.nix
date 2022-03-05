{
  description = ''Deal with Windows Registry from Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."winregistry-master".type = "github";
  inputs."winregistry-master".owner = "riinr";
  inputs."winregistry-master".repo = "flake-nimble";
  inputs."winregistry-master".ref = "flake-pinning";
  inputs."winregistry-master".dir = "nimpkgs/w/winregistry/master";
  inputs."winregistry-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."winregistry-v0_1_7".type = "github";
  inputs."winregistry-v0_1_7".owner = "riinr";
  inputs."winregistry-v0_1_7".repo = "flake-nimble";
  inputs."winregistry-v0_1_7".ref = "flake-pinning";
  inputs."winregistry-v0_1_7".dir = "nimpkgs/w/winregistry/v0_1_7";
  inputs."winregistry-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."winregistry-v0_1_8".type = "github";
  inputs."winregistry-v0_1_8".owner = "riinr";
  inputs."winregistry-v0_1_8".repo = "flake-nimble";
  inputs."winregistry-v0_1_8".ref = "flake-pinning";
  inputs."winregistry-v0_1_8".dir = "nimpkgs/w/winregistry/v0_1_8";
  inputs."winregistry-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."winregistry-v0_2_0".type = "github";
  inputs."winregistry-v0_2_0".owner = "riinr";
  inputs."winregistry-v0_2_0".repo = "flake-nimble";
  inputs."winregistry-v0_2_0".ref = "flake-pinning";
  inputs."winregistry-v0_2_0".dir = "nimpkgs/w/winregistry/v0_2_0";
  inputs."winregistry-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."winregistry-v0_2_1".type = "github";
  inputs."winregistry-v0_2_1".owner = "riinr";
  inputs."winregistry-v0_2_1".repo = "flake-nimble";
  inputs."winregistry-v0_2_1".ref = "flake-pinning";
  inputs."winregistry-v0_2_1".dir = "nimpkgs/w/winregistry/v0_2_1";
  inputs."winregistry-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}