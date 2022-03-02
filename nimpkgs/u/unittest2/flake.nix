{
  description = ''unittest fork focused on parallel test execution'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."unittest2-master".type = "github";
  inputs."unittest2-master".owner = "riinr";
  inputs."unittest2-master".repo = "flake-nimble";
  inputs."unittest2-master".ref = "flake-pinning";
  inputs."unittest2-master".dir = "nimpkgs/u/unittest2/master";
  inputs."unittest2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."unittest2-v0_0_1".type = "github";
  inputs."unittest2-v0_0_1".owner = "riinr";
  inputs."unittest2-v0_0_1".repo = "flake-nimble";
  inputs."unittest2-v0_0_1".ref = "flake-pinning";
  inputs."unittest2-v0_0_1".dir = "nimpkgs/u/unittest2/v0_0_1";
  inputs."unittest2-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."unittest2-v0_0_2".type = "github";
  inputs."unittest2-v0_0_2".owner = "riinr";
  inputs."unittest2-v0_0_2".repo = "flake-nimble";
  inputs."unittest2-v0_0_2".ref = "flake-pinning";
  inputs."unittest2-v0_0_2".dir = "nimpkgs/u/unittest2/v0_0_2";
  inputs."unittest2-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."unittest2-v0_0_3".type = "github";
  inputs."unittest2-v0_0_3".owner = "riinr";
  inputs."unittest2-v0_0_3".repo = "flake-nimble";
  inputs."unittest2-v0_0_3".ref = "flake-pinning";
  inputs."unittest2-v0_0_3".dir = "nimpkgs/u/unittest2/v0_0_3";
  inputs."unittest2-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}