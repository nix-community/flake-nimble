{
  description = ''A DSL to generate LaTeX from Nim'';
  inputs.src-latexdsl-master.flake = false;
  inputs.src-latexdsl-master.type = "github";
  inputs.src-latexdsl-master.owner = "Vindaar";
  inputs.src-latexdsl-master.repo = "LatexDSL";
  inputs.src-latexdsl-master.ref = "refs/heads/master";
  
  
  inputs."datamancer".url = "path:../../../d/datamancer";
  inputs."datamancer".type = "github";
  inputs."datamancer".owner = "riinr";
  inputs."datamancer".repo = "flake-nimble";
  inputs."datamancer".ref = "flake-pinning";
  inputs."datamancer".dir = "nimpkgs/d/datamancer";

  outputs = { self, nixpkgs, src-latexdsl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-latexdsl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-latexdsl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}