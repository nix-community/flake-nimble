{
  description = ''wrapper for the GNU multiple precision arithmetic library (GMP)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gmp-master".type = "github";
  inputs."gmp-master".owner = "riinr";
  inputs."gmp-master".repo = "flake-nimble";
  inputs."gmp-master".ref = "flake-pinning";
  inputs."gmp-master".dir = "nimpkgs/g/gmp/master";
  inputs."gmp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gmp-0_1_1".type = "github";
  inputs."gmp-0_1_1".owner = "riinr";
  inputs."gmp-0_1_1".repo = "flake-nimble";
  inputs."gmp-0_1_1".ref = "flake-pinning";
  inputs."gmp-0_1_1".dir = "nimpkgs/g/gmp/0_1_1";
  inputs."gmp-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gmp-v0_2_1".type = "github";
  inputs."gmp-v0_2_1".owner = "riinr";
  inputs."gmp-v0_2_1".repo = "flake-nimble";
  inputs."gmp-v0_2_1".ref = "flake-pinning";
  inputs."gmp-v0_2_1".dir = "nimpkgs/g/gmp/v0_2_1";
  inputs."gmp-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gmp-v0_2_2".type = "github";
  inputs."gmp-v0_2_2".owner = "riinr";
  inputs."gmp-v0_2_2".repo = "flake-nimble";
  inputs."gmp-v0_2_2".ref = "flake-pinning";
  inputs."gmp-v0_2_2".dir = "nimpkgs/g/gmp/v0_2_2";
  inputs."gmp-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gmp-v0_2_3".type = "github";
  inputs."gmp-v0_2_3".owner = "riinr";
  inputs."gmp-v0_2_3".repo = "flake-nimble";
  inputs."gmp-v0_2_3".ref = "flake-pinning";
  inputs."gmp-v0_2_3".dir = "nimpkgs/g/gmp/v0_2_3";
  inputs."gmp-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gmp-v0_2_4".type = "github";
  inputs."gmp-v0_2_4".owner = "riinr";
  inputs."gmp-v0_2_4".repo = "flake-nimble";
  inputs."gmp-v0_2_4".ref = "flake-pinning";
  inputs."gmp-v0_2_4".dir = "nimpkgs/g/gmp/v0_2_4";
  inputs."gmp-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."gmp-v0_2_5".type = "github";
  inputs."gmp-v0_2_5".owner = "riinr";
  inputs."gmp-v0_2_5".repo = "flake-nimble";
  inputs."gmp-v0_2_5".ref = "flake-pinning";
  inputs."gmp-v0_2_5".dir = "nimpkgs/g/gmp/v0_2_5";
  inputs."gmp-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}