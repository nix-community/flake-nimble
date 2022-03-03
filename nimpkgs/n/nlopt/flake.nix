{
  description = ''A wrapper for the non-linear optimization C library Nlopt'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nlopt-master".type = "github";
  inputs."nlopt-master".owner = "riinr";
  inputs."nlopt-master".repo = "flake-nimble";
  inputs."nlopt-master".ref = "flake-pinning";
  inputs."nlopt-master".dir = "nimpkgs/n/nlopt/master";
  inputs."nlopt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nlopt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nlopt-v0_3_0".type = "github";
  inputs."nlopt-v0_3_0".owner = "riinr";
  inputs."nlopt-v0_3_0".repo = "flake-nimble";
  inputs."nlopt-v0_3_0".ref = "flake-pinning";
  inputs."nlopt-v0_3_0".dir = "nimpkgs/n/nlopt/v0_3_0";
  inputs."nlopt-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nlopt-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nlopt-v0_3_1".type = "github";
  inputs."nlopt-v0_3_1".owner = "riinr";
  inputs."nlopt-v0_3_1".repo = "flake-nimble";
  inputs."nlopt-v0_3_1".ref = "flake-pinning";
  inputs."nlopt-v0_3_1".dir = "nimpkgs/n/nlopt/v0_3_1";
  inputs."nlopt-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nlopt-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nlopt-v0_3_2".type = "github";
  inputs."nlopt-v0_3_2".owner = "riinr";
  inputs."nlopt-v0_3_2".repo = "flake-nimble";
  inputs."nlopt-v0_3_2".ref = "flake-pinning";
  inputs."nlopt-v0_3_2".dir = "nimpkgs/n/nlopt/v0_3_2";
  inputs."nlopt-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nlopt-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}