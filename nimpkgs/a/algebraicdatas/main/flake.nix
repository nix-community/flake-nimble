{
  description = ''This module provides the feature of algebraic data type and its associated method'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-algebraicdatas-main.flake = false;
  inputs.src-algebraicdatas-main.type = "github";
  inputs.src-algebraicdatas-main.owner = "chocobo333";
  inputs.src-algebraicdatas-main.repo = "AlgebraicDataTypes";
  inputs.src-algebraicdatas-main.ref = "refs/heads/main";
  inputs.src-algebraicdatas-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."ast_pattern_matching".type = "github";
  inputs."ast_pattern_matching".owner = "riinr";
  inputs."ast_pattern_matching".repo = "flake-nimble";
  inputs."ast_pattern_matching".ref = "flake-pinning";
  inputs."ast_pattern_matching".dir = "nimpkgs/a/ast_pattern_matching";
  inputs."ast_pattern_matching".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ast_pattern_matching".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."macroutils".type = "github";
  inputs."macroutils".owner = "riinr";
  inputs."macroutils".repo = "flake-nimble";
  inputs."macroutils".ref = "flake-pinning";
  inputs."macroutils".dir = "nimpkgs/m/macroutils";
  inputs."macroutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."optionsutils".type = "github";
  inputs."optionsutils".owner = "riinr";
  inputs."optionsutils".repo = "flake-nimble";
  inputs."optionsutils".ref = "flake-pinning";
  inputs."optionsutils".dir = "nimpkgs/o/optionsutils";
  inputs."optionsutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-algebraicdatas-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-algebraicdatas-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-algebraicdatas-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}