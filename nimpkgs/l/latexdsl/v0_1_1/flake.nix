{
  description = ''A DSL to generate LaTeX from Nim'';
  inputs.src-latexdsl-v0_1_1.flake = false;
  inputs.src-latexdsl-v0_1_1.type = "github";
  inputs.src-latexdsl-v0_1_1.owner = "Vindaar";
  inputs.src-latexdsl-v0_1_1.repo = "LatexDSL";
  inputs.src-latexdsl-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-latexdsl-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-latexdsl-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-latexdsl-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}