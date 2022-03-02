{
  description = ''Utilities with dealing with 1d and 2d bit arrays.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bitty-master".type = "github";
  inputs."bitty-master".owner = "riinr";
  inputs."bitty-master".repo = "flake-nimble";
  inputs."bitty-master".ref = "flake-pinning";
  inputs."bitty-master".dir = "nimpkgs/b/bitty/master";
  inputs."bitty-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitty-0_1_0".type = "github";
  inputs."bitty-0_1_0".owner = "riinr";
  inputs."bitty-0_1_0".repo = "flake-nimble";
  inputs."bitty-0_1_0".ref = "flake-pinning";
  inputs."bitty-0_1_0".dir = "nimpkgs/b/bitty/0_1_0";
  inputs."bitty-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitty-0_1_1".type = "github";
  inputs."bitty-0_1_1".owner = "riinr";
  inputs."bitty-0_1_1".repo = "flake-nimble";
  inputs."bitty-0_1_1".ref = "flake-pinning";
  inputs."bitty-0_1_1".dir = "nimpkgs/b/bitty/0_1_1";
  inputs."bitty-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitty-0_1_2".type = "github";
  inputs."bitty-0_1_2".owner = "riinr";
  inputs."bitty-0_1_2".repo = "flake-nimble";
  inputs."bitty-0_1_2".ref = "flake-pinning";
  inputs."bitty-0_1_2".dir = "nimpkgs/b/bitty/0_1_2";
  inputs."bitty-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitty-0_1_3".type = "github";
  inputs."bitty-0_1_3".owner = "riinr";
  inputs."bitty-0_1_3".repo = "flake-nimble";
  inputs."bitty-0_1_3".ref = "flake-pinning";
  inputs."bitty-0_1_3".dir = "nimpkgs/b/bitty/0_1_3";
  inputs."bitty-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."bitty-0_1_4".type = "github";
  inputs."bitty-0_1_4".owner = "riinr";
  inputs."bitty-0_1_4".repo = "flake-nimble";
  inputs."bitty-0_1_4".ref = "flake-pinning";
  inputs."bitty-0_1_4".dir = "nimpkgs/b/bitty/0_1_4";
  inputs."bitty-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}