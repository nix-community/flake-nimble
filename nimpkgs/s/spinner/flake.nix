{
  description = ''Prebuilt components for the Fidget GUI library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."spinner-master".type = "github";
  inputs."spinner-master".owner = "riinr";
  inputs."spinner-master".repo = "flake-nimble";
  inputs."spinner-master".ref = "flake-pinning";
  inputs."spinner-master".dir = "nimpkgs/s/spinner/master";
  inputs."spinner-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."spinner-v0_1_0".type = "github";
  inputs."spinner-v0_1_0".owner = "riinr";
  inputs."spinner-v0_1_0".repo = "flake-nimble";
  inputs."spinner-v0_1_0".ref = "flake-pinning";
  inputs."spinner-v0_1_0".dir = "nimpkgs/s/spinner/v0_1_0";
  inputs."spinner-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."spinner-v0_1_1".type = "github";
  inputs."spinner-v0_1_1".owner = "riinr";
  inputs."spinner-v0_1_1".repo = "flake-nimble";
  inputs."spinner-v0_1_1".ref = "flake-pinning";
  inputs."spinner-v0_1_1".dir = "nimpkgs/s/spinner/v0_1_1";
  inputs."spinner-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."spinner-v0_1_2".type = "github";
  inputs."spinner-v0_1_2".owner = "riinr";
  inputs."spinner-v0_1_2".repo = "flake-nimble";
  inputs."spinner-v0_1_2".ref = "flake-pinning";
  inputs."spinner-v0_1_2".dir = "nimpkgs/s/spinner/v0_1_2";
  inputs."spinner-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."spinner-v0_1_3".type = "github";
  inputs."spinner-v0_1_3".owner = "riinr";
  inputs."spinner-v0_1_3".repo = "flake-nimble";
  inputs."spinner-v0_1_3".ref = "flake-pinning";
  inputs."spinner-v0_1_3".dir = "nimpkgs/s/spinner/v0_1_3";
  inputs."spinner-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."spinner-v0_2_0".type = "github";
  inputs."spinner-v0_2_0".owner = "riinr";
  inputs."spinner-v0_2_0".repo = "flake-nimble";
  inputs."spinner-v0_2_0".ref = "flake-pinning";
  inputs."spinner-v0_2_0".dir = "nimpkgs/s/spinner/v0_2_0";
  inputs."spinner-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."spinner-v0_2_1".type = "github";
  inputs."spinner-v0_2_1".owner = "riinr";
  inputs."spinner-v0_2_1".repo = "flake-nimble";
  inputs."spinner-v0_2_1".ref = "flake-pinning";
  inputs."spinner-v0_2_1".dir = "nimpkgs/s/spinner/v0_2_1";
  inputs."spinner-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}