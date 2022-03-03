{
  description = ''A high-level image I/O and manipulation library for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."inumon-master".type = "github";
  inputs."inumon-master".owner = "riinr";
  inputs."inumon-master".repo = "flake-nimble";
  inputs."inumon-master".ref = "flake-pinning";
  inputs."inumon-master".dir = "nimpkgs/i/inumon/master";
  inputs."inumon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inumon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."inumon-v0_1_2".type = "github";
  inputs."inumon-v0_1_2".owner = "riinr";
  inputs."inumon-v0_1_2".repo = "flake-nimble";
  inputs."inumon-v0_1_2".ref = "flake-pinning";
  inputs."inumon-v0_1_2".dir = "nimpkgs/i/inumon/v0_1_2";
  inputs."inumon-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inumon-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."inumon-v0_2_2".type = "github";
  inputs."inumon-v0_2_2".owner = "riinr";
  inputs."inumon-v0_2_2".repo = "flake-nimble";
  inputs."inumon-v0_2_2".ref = "flake-pinning";
  inputs."inumon-v0_2_2".dir = "nimpkgs/i/inumon/v0_2_2";
  inputs."inumon-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inumon-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."inumon-v0_2_3".type = "github";
  inputs."inumon-v0_2_3".owner = "riinr";
  inputs."inumon-v0_2_3".repo = "flake-nimble";
  inputs."inumon-v0_2_3".ref = "flake-pinning";
  inputs."inumon-v0_2_3".dir = "nimpkgs/i/inumon/v0_2_3";
  inputs."inumon-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inumon-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}