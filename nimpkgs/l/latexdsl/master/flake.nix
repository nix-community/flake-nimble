{
  description = ''A DSL to generate LaTeX from Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-latexdsl-master.flake = false;
  inputs.src-latexdsl-master.type = "github";
  inputs.src-latexdsl-master.owner = "Vindaar";
  inputs.src-latexdsl-master.repo = "LatexDSL";
  inputs.src-latexdsl-master.ref = "refs/heads/master";
  inputs.src-latexdsl-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."datamancer".type = "github";
  # inputs."datamancer".owner = "riinr";
  # inputs."datamancer".repo = "flake-nimble";
  # inputs."datamancer".ref = "flake-pinning";
  # inputs."datamancer".dir = "nimpkgs/d/datamancer";
  # inputs."datamancer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."datamancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-latexdsl-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-latexdsl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-latexdsl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}