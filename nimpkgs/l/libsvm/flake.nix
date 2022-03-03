{
  description = ''libsvm wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libsvm-master".type = "github";
  inputs."libsvm-master".owner = "riinr";
  inputs."libsvm-master".repo = "flake-nimble";
  inputs."libsvm-master".ref = "flake-pinning";
  inputs."libsvm-master".dir = "nimpkgs/l/libsvm/master";
  inputs."libsvm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsvm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."libsvm-v0_1_1".type = "github";
  inputs."libsvm-v0_1_1".owner = "riinr";
  inputs."libsvm-v0_1_1".repo = "flake-nimble";
  inputs."libsvm-v0_1_1".ref = "flake-pinning";
  inputs."libsvm-v0_1_1".dir = "nimpkgs/l/libsvm/v0_1_1";
  inputs."libsvm-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsvm-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."libsvm-v0_1_2".type = "github";
  inputs."libsvm-v0_1_2".owner = "riinr";
  inputs."libsvm-v0_1_2".repo = "flake-nimble";
  inputs."libsvm-v0_1_2".ref = "flake-pinning";
  inputs."libsvm-v0_1_2".dir = "nimpkgs/l/libsvm/v0_1_2";
  inputs."libsvm-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsvm-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."libsvm-v0_1_3".type = "github";
  inputs."libsvm-v0_1_3".owner = "riinr";
  inputs."libsvm-v0_1_3".repo = "flake-nimble";
  inputs."libsvm-v0_1_3".ref = "flake-pinning";
  inputs."libsvm-v0_1_3".dir = "nimpkgs/l/libsvm/v0_1_3";
  inputs."libsvm-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsvm-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."libsvm-v0_2_0".type = "github";
  inputs."libsvm-v0_2_0".owner = "riinr";
  inputs."libsvm-v0_2_0".repo = "flake-nimble";
  inputs."libsvm-v0_2_0".ref = "flake-pinning";
  inputs."libsvm-v0_2_0".dir = "nimpkgs/l/libsvm/v0_2_0";
  inputs."libsvm-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsvm-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}