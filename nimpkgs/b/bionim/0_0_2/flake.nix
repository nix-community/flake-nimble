{
  description = ''This package tries to provide a lot of the most useful data structures and alogrithms need in the different subfield of bio informatics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bionim-0_0_2.flake = false;
  inputs.src-bionim-0_0_2.type = "github";
  inputs.src-bionim-0_0_2.owner = "Unaimend";
  inputs.src-bionim-0_0_2.repo = "bionim";
  inputs.src-bionim-0_0_2.ref = "refs/tags/0.0.2";
  
  
  inputs."phylogeni".type = "github";
  inputs."phylogeni".owner = "riinr";
  inputs."phylogeni".repo = "flake-nimble";
  inputs."phylogeni".ref = "flake-pinning";
  inputs."phylogeni".dir = "nimpkgs/p/phylogeni";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bionim-0_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bionim-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bionim-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}