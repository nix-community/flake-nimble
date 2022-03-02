{
  description = ''A DSL to generate LaTeX from Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-latexdsl-v0_1_3.flake = false;
  inputs.src-latexdsl-v0_1_3.type = "github";
  inputs.src-latexdsl-v0_1_3.owner = "Vindaar";
  inputs.src-latexdsl-v0_1_3.repo = "LatexDSL";
  inputs.src-latexdsl-v0_1_3.ref = "refs/tags/v0.1.3";
  inputs.src-latexdsl-v0_1_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-latexdsl-v0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-latexdsl-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-latexdsl-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}