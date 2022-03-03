{
  description = ''A simple bitarray library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimbitarray-master".type = "github";
  inputs."nimbitarray-master".owner = "riinr";
  inputs."nimbitarray-master".repo = "flake-nimble";
  inputs."nimbitarray-master".ref = "flake-pinning";
  inputs."nimbitarray-master".dir = "nimpkgs/n/nimbitarray/master";
  inputs."nimbitarray-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbitarray-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimbitarray-0_2_0".type = "github";
  inputs."nimbitarray-0_2_0".owner = "riinr";
  inputs."nimbitarray-0_2_0".repo = "flake-nimble";
  inputs."nimbitarray-0_2_0".ref = "flake-pinning";
  inputs."nimbitarray-0_2_0".dir = "nimpkgs/n/nimbitarray/0_2_0";
  inputs."nimbitarray-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbitarray-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimbitarray-0_2_1".type = "github";
  inputs."nimbitarray-0_2_1".owner = "riinr";
  inputs."nimbitarray-0_2_1".repo = "flake-nimble";
  inputs."nimbitarray-0_2_1".ref = "flake-pinning";
  inputs."nimbitarray-0_2_1".dir = "nimpkgs/n/nimbitarray/0_2_1";
  inputs."nimbitarray-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbitarray-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}