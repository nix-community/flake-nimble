{
  description = ''fs memory zip finder implement in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."finder-master".type = "github";
  inputs."finder-master".owner = "riinr";
  inputs."finder-master".repo = "flake-nimble";
  inputs."finder-master".ref = "flake-pinning";
  inputs."finder-master".dir = "nimpkgs/f/finder/master";
  inputs."finder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."finder-v0_1_1".type = "github";
  inputs."finder-v0_1_1".owner = "riinr";
  inputs."finder-v0_1_1".repo = "flake-nimble";
  inputs."finder-v0_1_1".ref = "flake-pinning";
  inputs."finder-v0_1_1".dir = "nimpkgs/f/finder/v0_1_1";
  inputs."finder-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finder-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."finder-v0_2_0".type = "github";
  inputs."finder-v0_2_0".owner = "riinr";
  inputs."finder-v0_2_0".repo = "flake-nimble";
  inputs."finder-v0_2_0".ref = "flake-pinning";
  inputs."finder-v0_2_0".dir = "nimpkgs/f/finder/v0_2_0";
  inputs."finder-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finder-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}