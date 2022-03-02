{
  description = ''A DSL to generate LaTeX from Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-latexdsl-v0_1_6.flake = false;
  inputs.src-latexdsl-v0_1_6.type = "github";
  inputs.src-latexdsl-v0_1_6.owner = "Vindaar";
  inputs.src-latexdsl-v0_1_6.repo = "LatexDSL";
  inputs.src-latexdsl-v0_1_6.ref = "refs/tags/v0.1.6";
  inputs.src-latexdsl-v0_1_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."datamancer".type = "github";
  # inputs."datamancer".owner = "riinr";
  # inputs."datamancer".repo = "flake-nimble";
  # inputs."datamancer".ref = "flake-pinning";
  # inputs."datamancer".dir = "nimpkgs/d/datamancer";
  # inputs."datamancer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."datamancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-latexdsl-v0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-latexdsl-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-latexdsl-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}