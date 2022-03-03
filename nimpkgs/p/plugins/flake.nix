{
  description = ''Plugin system for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."plugins-master".type = "github";
  inputs."plugins-master".owner = "riinr";
  inputs."plugins-master".repo = "flake-nimble";
  inputs."plugins-master".ref = "flake-pinning";
  inputs."plugins-master".dir = "nimpkgs/p/plugins/master";
  inputs."plugins-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plugins-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."plugins-v0_1_0".type = "github";
  inputs."plugins-v0_1_0".owner = "riinr";
  inputs."plugins-v0_1_0".repo = "flake-nimble";
  inputs."plugins-v0_1_0".ref = "flake-pinning";
  inputs."plugins-v0_1_0".dir = "nimpkgs/p/plugins/v0_1_0";
  inputs."plugins-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plugins-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."plugins-v0_1_1".type = "github";
  inputs."plugins-v0_1_1".owner = "riinr";
  inputs."plugins-v0_1_1".repo = "flake-nimble";
  inputs."plugins-v0_1_1".ref = "flake-pinning";
  inputs."plugins-v0_1_1".dir = "nimpkgs/p/plugins/v0_1_1";
  inputs."plugins-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plugins-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."plugins-v0_1_2".type = "github";
  inputs."plugins-v0_1_2".owner = "riinr";
  inputs."plugins-v0_1_2".repo = "flake-nimble";
  inputs."plugins-v0_1_2".ref = "flake-pinning";
  inputs."plugins-v0_1_2".dir = "nimpkgs/p/plugins/v0_1_2";
  inputs."plugins-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plugins-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}