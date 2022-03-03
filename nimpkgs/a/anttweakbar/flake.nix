{
  description = ''nim wrapper around the AntTweakBar c library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."anttweakbar-master".type = "github";
  inputs."anttweakbar-master".owner = "riinr";
  inputs."anttweakbar-master".repo = "flake-nimble";
  inputs."anttweakbar-master".ref = "flake-pinning";
  inputs."anttweakbar-master".dir = "nimpkgs/a/anttweakbar/master";
  inputs."anttweakbar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anttweakbar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."anttweakbar-v1_0_2".type = "github";
  inputs."anttweakbar-v1_0_2".owner = "riinr";
  inputs."anttweakbar-v1_0_2".repo = "flake-nimble";
  inputs."anttweakbar-v1_0_2".ref = "flake-pinning";
  inputs."anttweakbar-v1_0_2".dir = "nimpkgs/a/anttweakbar/v1_0_2";
  inputs."anttweakbar-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anttweakbar-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}