{
  description = ''A DSL to generate LaTeX from Nim'';
  inputs.src-latexdsl-v0_1_3.flake = false;
  inputs.src-latexdsl-v0_1_3.type = "github";
  inputs.src-latexdsl-v0_1_3.owner = "Vindaar";
  inputs.src-latexdsl-v0_1_3.repo = "LatexDSL";
  inputs.src-latexdsl-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-latexdsl-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-latexdsl-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-latexdsl-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}