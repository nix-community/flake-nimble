{
  description = ''This module provides the feature of algebraic data type and its associated method'';
  inputs.src-algebraicdatas-main.flake = false;
  inputs.src-algebraicdatas-main.type = "github";
  inputs.src-algebraicdatas-main.owner = "chocobo333";
  inputs.src-algebraicdatas-main.repo = "AlgebraicDataTypes";
  inputs.src-algebraicdatas-main.ref = "refs/heads/main";
  
  
  inputs."ast_pattern_matching".url = "path:../../../a/ast_pattern_matching";
  inputs."ast_pattern_matching".type = "github";
  inputs."ast_pattern_matching".owner = "riinr";
  inputs."ast_pattern_matching".repo = "flake-nimble";
  inputs."ast_pattern_matching".ref = "flake-pinning";
  inputs."ast_pattern_matching".dir = "nimpkgs/a/ast_pattern_matching";

  
  inputs."macroutils".url = "path:../../../m/macroutils";
  inputs."macroutils".type = "github";
  inputs."macroutils".owner = "riinr";
  inputs."macroutils".repo = "flake-nimble";
  inputs."macroutils".ref = "flake-pinning";
  inputs."macroutils".dir = "nimpkgs/m/macroutils";

  
  inputs."optionsutils".url = "path:../../../o/optionsutils";
  inputs."optionsutils".type = "github";
  inputs."optionsutils".owner = "riinr";
  inputs."optionsutils".repo = "flake-nimble";
  inputs."optionsutils".ref = "flake-pinning";
  inputs."optionsutils".dir = "nimpkgs/o/optionsutils";

  outputs = { self, nixpkgs, src-algebraicdatas-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-algebraicdatas-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-algebraicdatas-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}