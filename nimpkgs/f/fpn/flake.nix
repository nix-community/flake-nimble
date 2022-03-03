{
  description = ''A fixed point number library in pure Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fpn-master".type = "github";
  inputs."fpn-master".owner = "riinr";
  inputs."fpn-master".repo = "flake-nimble";
  inputs."fpn-master".ref = "flake-pinning";
  inputs."fpn-master".dir = "nimpkgs/f/fpn/master";
  inputs."fpn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fpn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fpn-v0_0_1".type = "github";
  inputs."fpn-v0_0_1".owner = "riinr";
  inputs."fpn-v0_0_1".repo = "flake-nimble";
  inputs."fpn-v0_0_1".ref = "flake-pinning";
  inputs."fpn-v0_0_1".dir = "nimpkgs/f/fpn/v0_0_1";
  inputs."fpn-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fpn-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fpn-v0_1_0".type = "github";
  inputs."fpn-v0_1_0".owner = "riinr";
  inputs."fpn-v0_1_0".repo = "flake-nimble";
  inputs."fpn-v0_1_0".ref = "flake-pinning";
  inputs."fpn-v0_1_0".dir = "nimpkgs/f/fpn/v0_1_0";
  inputs."fpn-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fpn-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}