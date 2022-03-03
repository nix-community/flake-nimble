{
  description = ''Shaders in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimsl-master".type = "github";
  inputs."nimsl-master".owner = "riinr";
  inputs."nimsl-master".repo = "flake-nimble";
  inputs."nimsl-master".ref = "flake-pinning";
  inputs."nimsl-master".dir = "nimpkgs/n/nimsl/master";
  inputs."nimsl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimsl-v0_2".type = "github";
  inputs."nimsl-v0_2".owner = "riinr";
  inputs."nimsl-v0_2".repo = "flake-nimble";
  inputs."nimsl-v0_2".ref = "flake-pinning";
  inputs."nimsl-v0_2".dir = "nimpkgs/n/nimsl/v0_2";
  inputs."nimsl-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimsl-v0_2_1".type = "github";
  inputs."nimsl-v0_2_1".owner = "riinr";
  inputs."nimsl-v0_2_1".repo = "flake-nimble";
  inputs."nimsl-v0_2_1".ref = "flake-pinning";
  inputs."nimsl-v0_2_1".dir = "nimpkgs/n/nimsl/v0_2_1";
  inputs."nimsl-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimsl-v0_3".type = "github";
  inputs."nimsl-v0_3".owner = "riinr";
  inputs."nimsl-v0_3".repo = "flake-nimble";
  inputs."nimsl-v0_3".ref = "flake-pinning";
  inputs."nimsl-v0_3".dir = "nimpkgs/n/nimsl/v0_3";
  inputs."nimsl-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimsl-v0_3_1".type = "github";
  inputs."nimsl-v0_3_1".owner = "riinr";
  inputs."nimsl-v0_3_1".repo = "flake-nimble";
  inputs."nimsl-v0_3_1".ref = "flake-pinning";
  inputs."nimsl-v0_3_1".dir = "nimpkgs/n/nimsl/v0_3_1";
  inputs."nimsl-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimsl-v0_3_2".type = "github";
  inputs."nimsl-v0_3_2".owner = "riinr";
  inputs."nimsl-v0_3_2".repo = "flake-nimble";
  inputs."nimsl-v0_3_2".ref = "flake-pinning";
  inputs."nimsl-v0_3_2".dir = "nimpkgs/n/nimsl/v0_3_2";
  inputs."nimsl-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}