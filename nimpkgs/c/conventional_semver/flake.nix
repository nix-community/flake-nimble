{
  description = ''Calculate the next semver version given the git log and previous version'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."conventional_semver-master".type = "github";
  inputs."conventional_semver-master".owner = "riinr";
  inputs."conventional_semver-master".repo = "flake-nimble";
  inputs."conventional_semver-master".ref = "flake-pinning";
  inputs."conventional_semver-master".dir = "nimpkgs/c/conventional_semver/master";
  inputs."conventional_semver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."conventional_semver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."conventional_semver-0_1_0".type = "github";
  inputs."conventional_semver-0_1_0".owner = "riinr";
  inputs."conventional_semver-0_1_0".repo = "flake-nimble";
  inputs."conventional_semver-0_1_0".ref = "flake-pinning";
  inputs."conventional_semver-0_1_0".dir = "nimpkgs/c/conventional_semver/0_1_0";
  inputs."conventional_semver-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."conventional_semver-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."conventional_semver-0_2_0".type = "github";
  inputs."conventional_semver-0_2_0".owner = "riinr";
  inputs."conventional_semver-0_2_0".repo = "flake-nimble";
  inputs."conventional_semver-0_2_0".ref = "flake-pinning";
  inputs."conventional_semver-0_2_0".dir = "nimpkgs/c/conventional_semver/0_2_0";
  inputs."conventional_semver-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."conventional_semver-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}