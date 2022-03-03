{
  description = ''BLAS for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimblas-master".type = "github";
  inputs."nimblas-master".owner = "riinr";
  inputs."nimblas-master".repo = "flake-nimble";
  inputs."nimblas-master".ref = "flake-pinning";
  inputs."nimblas-master".dir = "nimpkgs/n/nimblas/master";
  inputs."nimblas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimblas-0_1_1".type = "github";
  inputs."nimblas-0_1_1".owner = "riinr";
  inputs."nimblas-0_1_1".repo = "flake-nimble";
  inputs."nimblas-0_1_1".ref = "flake-pinning";
  inputs."nimblas-0_1_1".dir = "nimpkgs/n/nimblas/0_1_1";
  inputs."nimblas-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimblas-0_1_2".type = "github";
  inputs."nimblas-0_1_2".owner = "riinr";
  inputs."nimblas-0_1_2".repo = "flake-nimble";
  inputs."nimblas-0_1_2".ref = "flake-pinning";
  inputs."nimblas-0_1_2".dir = "nimpkgs/n/nimblas/0_1_2";
  inputs."nimblas-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimblas-0_1_3".type = "github";
  inputs."nimblas-0_1_3".owner = "riinr";
  inputs."nimblas-0_1_3".repo = "flake-nimble";
  inputs."nimblas-0_1_3".ref = "flake-pinning";
  inputs."nimblas-0_1_3".dir = "nimpkgs/n/nimblas/0_1_3";
  inputs."nimblas-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimblas-0_1_4".type = "github";
  inputs."nimblas-0_1_4".owner = "riinr";
  inputs."nimblas-0_1_4".repo = "flake-nimble";
  inputs."nimblas-0_1_4".ref = "flake-pinning";
  inputs."nimblas-0_1_4".dir = "nimpkgs/n/nimblas/0_1_4";
  inputs."nimblas-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimblas-0_2_0".type = "github";
  inputs."nimblas-0_2_0".owner = "riinr";
  inputs."nimblas-0_2_0".repo = "flake-nimble";
  inputs."nimblas-0_2_0".ref = "flake-pinning";
  inputs."nimblas-0_2_0".dir = "nimpkgs/n/nimblas/0_2_0";
  inputs."nimblas-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimblas-0_2_1".type = "github";
  inputs."nimblas-0_2_1".owner = "riinr";
  inputs."nimblas-0_2_1".repo = "flake-nimble";
  inputs."nimblas-0_2_1".ref = "flake-pinning";
  inputs."nimblas-0_2_1".dir = "nimpkgs/n/nimblas/0_2_1";
  inputs."nimblas-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimblas-0_2_2".type = "github";
  inputs."nimblas-0_2_2".owner = "riinr";
  inputs."nimblas-0_2_2".repo = "flake-nimble";
  inputs."nimblas-0_2_2".ref = "flake-pinning";
  inputs."nimblas-0_2_2".dir = "nimpkgs/n/nimblas/0_2_2";
  inputs."nimblas-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}