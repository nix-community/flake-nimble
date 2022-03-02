{
  description = ''Semantic versioning parser for Nim. Allows the parsing of version strings into objects and the comparing of version objects.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."semver-master".type = "github";
  inputs."semver-master".owner = "riinr";
  inputs."semver-master".repo = "flake-nimble";
  inputs."semver-master".ref = "flake-pinning";
  inputs."semver-master".dir = "nimpkgs/s/semver/master";
  inputs."semver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."semver-v_1_0_2".type = "github";
  inputs."semver-v_1_0_2".owner = "riinr";
  inputs."semver-v_1_0_2".repo = "flake-nimble";
  inputs."semver-v_1_0_2".ref = "flake-pinning";
  inputs."semver-v_1_0_2".dir = "nimpkgs/s/semver/v_1_0_2";
  inputs."semver-v_1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v_1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."semver-v1_0_0".type = "github";
  inputs."semver-v1_0_0".owner = "riinr";
  inputs."semver-v1_0_0".repo = "flake-nimble";
  inputs."semver-v1_0_0".ref = "flake-pinning";
  inputs."semver-v1_0_0".dir = "nimpkgs/s/semver/v1_0_0";
  inputs."semver-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."semver-v1_0_1".type = "github";
  inputs."semver-v1_0_1".owner = "riinr";
  inputs."semver-v1_0_1".repo = "flake-nimble";
  inputs."semver-v1_0_1".ref = "flake-pinning";
  inputs."semver-v1_0_1".dir = "nimpkgs/s/semver/v1_0_1";
  inputs."semver-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."semver-v1_0_2".type = "github";
  inputs."semver-v1_0_2".owner = "riinr";
  inputs."semver-v1_0_2".repo = "flake-nimble";
  inputs."semver-v1_0_2".ref = "flake-pinning";
  inputs."semver-v1_0_2".dir = "nimpkgs/s/semver/v1_0_2";
  inputs."semver-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."semver-v1_0_3".type = "github";
  inputs."semver-v1_0_3".owner = "riinr";
  inputs."semver-v1_0_3".repo = "flake-nimble";
  inputs."semver-v1_0_3".ref = "flake-pinning";
  inputs."semver-v1_0_3".dir = "nimpkgs/s/semver/v1_0_3";
  inputs."semver-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."semver-v1_0_4".type = "github";
  inputs."semver-v1_0_4".owner = "riinr";
  inputs."semver-v1_0_4".repo = "flake-nimble";
  inputs."semver-v1_0_4".ref = "flake-pinning";
  inputs."semver-v1_0_4".dir = "nimpkgs/s/semver/v1_0_4";
  inputs."semver-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."semver-v1_1_0".type = "github";
  inputs."semver-v1_1_0".owner = "riinr";
  inputs."semver-v1_1_0".repo = "flake-nimble";
  inputs."semver-v1_1_0".ref = "flake-pinning";
  inputs."semver-v1_1_0".dir = "nimpkgs/s/semver/v1_1_0";
  inputs."semver-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."semver-v1_1_1".type = "github";
  inputs."semver-v1_1_1".owner = "riinr";
  inputs."semver-v1_1_1".repo = "flake-nimble";
  inputs."semver-v1_1_1".ref = "flake-pinning";
  inputs."semver-v1_1_1".dir = "nimpkgs/s/semver/v1_1_1";
  inputs."semver-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}