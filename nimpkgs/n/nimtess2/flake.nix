{
  description = ''Nim wrapper for libtess2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimtess2-master".type = "github";
  inputs."nimtess2-master".owner = "riinr";
  inputs."nimtess2-master".repo = "flake-nimble";
  inputs."nimtess2-master".ref = "flake-pinning";
  inputs."nimtess2-master".dir = "nimpkgs/n/nimtess2/master";
  inputs."nimtess2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtess2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimtess2-v0_1_0".type = "github";
  inputs."nimtess2-v0_1_0".owner = "riinr";
  inputs."nimtess2-v0_1_0".repo = "flake-nimble";
  inputs."nimtess2-v0_1_0".ref = "flake-pinning";
  inputs."nimtess2-v0_1_0".dir = "nimpkgs/n/nimtess2/v0_1_0";
  inputs."nimtess2-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtess2-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimtess2-v0_1_1".type = "github";
  inputs."nimtess2-v0_1_1".owner = "riinr";
  inputs."nimtess2-v0_1_1".repo = "flake-nimble";
  inputs."nimtess2-v0_1_1".ref = "flake-pinning";
  inputs."nimtess2-v0_1_1".dir = "nimpkgs/n/nimtess2/v0_1_1";
  inputs."nimtess2-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtess2-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}