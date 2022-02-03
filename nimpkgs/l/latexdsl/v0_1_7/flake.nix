{
  description = ''A DSL to generate LaTeX from Nim'';
  inputs.src-latexdsl-v0_1_7.flake = false;
  inputs.src-latexdsl-v0_1_7.type = "github";
  inputs.src-latexdsl-v0_1_7.owner = "Vindaar";
  inputs.src-latexdsl-v0_1_7.repo = "LatexDSL";
  inputs.src-latexdsl-v0_1_7.ref = "refs/tags/v0.1.7";
  
  
  inputs."datamancer".url = "path:../../../d/datamancer";
  inputs."datamancer".type = "github";
  inputs."datamancer".owner = "riinr";
  inputs."datamancer".repo = "flake-nimble";
  inputs."datamancer".ref = "flake-pinning";
  inputs."datamancer".dir = "nimpkgs/d/datamancer";

  outputs = { self, nixpkgs, src-latexdsl-v0_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-latexdsl-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-latexdsl-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}