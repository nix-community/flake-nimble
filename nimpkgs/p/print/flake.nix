{
  description = ''Print is a set of pretty print macros, useful for print-debugging.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."print-master".type = "github";
  inputs."print-master".owner = "riinr";
  inputs."print-master".repo = "flake-nimble";
  inputs."print-master".ref = "flake-pinning";
  inputs."print-master".dir = "nimpkgs/p/print/master";
  inputs."print-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."print-0_1_0".type = "github";
  inputs."print-0_1_0".owner = "riinr";
  inputs."print-0_1_0".repo = "flake-nimble";
  inputs."print-0_1_0".ref = "flake-pinning";
  inputs."print-0_1_0".dir = "nimpkgs/p/print/0_1_0";
  inputs."print-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."print-0_2_0".type = "github";
  inputs."print-0_2_0".owner = "riinr";
  inputs."print-0_2_0".repo = "flake-nimble";
  inputs."print-0_2_0".ref = "flake-pinning";
  inputs."print-0_2_0".dir = "nimpkgs/p/print/0_2_0";
  inputs."print-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."print-1_0_0".type = "github";
  inputs."print-1_0_0".owner = "riinr";
  inputs."print-1_0_0".repo = "flake-nimble";
  inputs."print-1_0_0".ref = "flake-pinning";
  inputs."print-1_0_0".dir = "nimpkgs/p/print/1_0_0";
  inputs."print-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."print-1_0_1".type = "github";
  inputs."print-1_0_1".owner = "riinr";
  inputs."print-1_0_1".repo = "flake-nimble";
  inputs."print-1_0_1".ref = "flake-pinning";
  inputs."print-1_0_1".dir = "nimpkgs/p/print/1_0_1";
  inputs."print-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."print-1_0_2".type = "github";
  inputs."print-1_0_2".owner = "riinr";
  inputs."print-1_0_2".repo = "flake-nimble";
  inputs."print-1_0_2".ref = "flake-pinning";
  inputs."print-1_0_2".dir = "nimpkgs/p/print/1_0_2";
  inputs."print-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."print-v0_1_0".type = "github";
  inputs."print-v0_1_0".owner = "riinr";
  inputs."print-v0_1_0".repo = "flake-nimble";
  inputs."print-v0_1_0".ref = "flake-pinning";
  inputs."print-v0_1_0".dir = "nimpkgs/p/print/v0_1_0";
  inputs."print-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}