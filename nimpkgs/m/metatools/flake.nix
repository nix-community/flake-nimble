{
  description = ''Metaprogramming tools for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."metatools-master".type = "github";
  inputs."metatools-master".owner = "riinr";
  inputs."metatools-master".repo = "flake-nimble";
  inputs."metatools-master".ref = "flake-pinning";
  inputs."metatools-master".dir = "nimpkgs/m/metatools/master";
  inputs."metatools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metatools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."metatools-v0_1_0".type = "github";
  inputs."metatools-v0_1_0".owner = "riinr";
  inputs."metatools-v0_1_0".repo = "flake-nimble";
  inputs."metatools-v0_1_0".ref = "flake-pinning";
  inputs."metatools-v0_1_0".dir = "nimpkgs/m/metatools/v0_1_0";
  inputs."metatools-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metatools-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."metatools-v0_2_0".type = "github";
  inputs."metatools-v0_2_0".owner = "riinr";
  inputs."metatools-v0_2_0".repo = "flake-nimble";
  inputs."metatools-v0_2_0".ref = "flake-pinning";
  inputs."metatools-v0_2_0".dir = "nimpkgs/m/metatools/v0_2_0";
  inputs."metatools-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metatools-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}