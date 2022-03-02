{
  description = ''The core types and functions of the SciNim ecosystem'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."scinim-main".type = "github";
  inputs."scinim-main".owner = "riinr";
  inputs."scinim-main".repo = "flake-nimble";
  inputs."scinim-main".ref = "flake-pinning";
  inputs."scinim-main".dir = "nimpkgs/s/scinim/main";
  inputs."scinim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scinim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."scinim-v0_1_0".type = "github";
  inputs."scinim-v0_1_0".owner = "riinr";
  inputs."scinim-v0_1_0".repo = "flake-nimble";
  inputs."scinim-v0_1_0".ref = "flake-pinning";
  inputs."scinim-v0_1_0".dir = "nimpkgs/s/scinim/v0_1_0";
  inputs."scinim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scinim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."scinim-v0_2_2".type = "github";
  inputs."scinim-v0_2_2".owner = "riinr";
  inputs."scinim-v0_2_2".repo = "flake-nimble";
  inputs."scinim-v0_2_2".ref = "flake-pinning";
  inputs."scinim-v0_2_2".dir = "nimpkgs/s/scinim/v0_2_2";
  inputs."scinim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scinim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."scinim-v0_2_3".type = "github";
  inputs."scinim-v0_2_3".owner = "riinr";
  inputs."scinim-v0_2_3".repo = "flake-nimble";
  inputs."scinim-v0_2_3".ref = "flake-pinning";
  inputs."scinim-v0_2_3".dir = "nimpkgs/s/scinim/v0_2_3";
  inputs."scinim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scinim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}