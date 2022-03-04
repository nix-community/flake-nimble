{
  description = ''A DSL to generate LaTeX from Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-latexdsl-v0_1_5.flake = false;
  inputs.src-latexdsl-v0_1_5.type = "github";
  inputs.src-latexdsl-v0_1_5.owner = "Vindaar";
  inputs.src-latexdsl-v0_1_5.repo = "LatexDSL";
  inputs.src-latexdsl-v0_1_5.ref = "refs/tags/v0.1.5";
  inputs.src-latexdsl-v0_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."datamancer".type = "github";
  inputs."datamancer".owner = "riinr";
  inputs."datamancer".repo = "flake-nimble";
  inputs."datamancer".ref = "flake-pinning";
  inputs."datamancer".dir = "nimpkgs/d/datamancer";
  inputs."datamancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-latexdsl-v0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-latexdsl-v0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-latexdsl-v0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}