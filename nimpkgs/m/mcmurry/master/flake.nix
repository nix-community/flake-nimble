{
  description = ''A module for generating lexer/parser.'';
  inputs.src-mcmurry-master.flake = false;
  inputs.src-mcmurry-master.type = "github";
  inputs.src-mcmurry-master.owner = "chocobo333";
  inputs.src-mcmurry-master.repo = "mcmurry";
  inputs.src-mcmurry-master.ref = "refs/heads/master";
  
  
  inputs."asciitype".type = "github";
  inputs."asciitype".owner = "riinr";
  inputs."asciitype".repo = "flake-nimble";
  inputs."asciitype".ref = "flake-pinning";
  inputs."asciitype".dir = "nimpkgs/a/asciitype";

  
  inputs."ast_pattern_matching".type = "github";
  inputs."ast_pattern_matching".owner = "riinr";
  inputs."ast_pattern_matching".repo = "flake-nimble";
  inputs."ast_pattern_matching".ref = "flake-pinning";
  inputs."ast_pattern_matching".dir = "nimpkgs/a/ast_pattern_matching";

  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-mcmurry-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mcmurry-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mcmurry-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}