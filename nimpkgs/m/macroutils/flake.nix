{
  description = ''A package that makes creating macros easier'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."macroutils-master".type = "github";
  inputs."macroutils-master".owner = "riinr";
  inputs."macroutils-master".repo = "flake-nimble";
  inputs."macroutils-master".ref = "flake-pinning";
  inputs."macroutils-master".dir = "nimpkgs/m/macroutils/master";
  inputs."macroutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."macroutils-v1_1_0".type = "github";
  inputs."macroutils-v1_1_0".owner = "riinr";
  inputs."macroutils-v1_1_0".repo = "flake-nimble";
  inputs."macroutils-v1_1_0".ref = "flake-pinning";
  inputs."macroutils-v1_1_0".dir = "nimpkgs/m/macroutils/v1_1_0";
  inputs."macroutils-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."macroutils-v1_2_0".type = "github";
  inputs."macroutils-v1_2_0".owner = "riinr";
  inputs."macroutils-v1_2_0".repo = "flake-nimble";
  inputs."macroutils-v1_2_0".ref = "flake-pinning";
  inputs."macroutils-v1_2_0".dir = "nimpkgs/m/macroutils/v1_2_0";
  inputs."macroutils-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}