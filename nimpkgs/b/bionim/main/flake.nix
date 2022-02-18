{
  description = ''This package tries to provide a lot of the most useful data structures and alogrithms need in the different subfield of bio informatics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bionim-main.flake = false;
  inputs.src-bionim-main.type = "github";
  inputs.src-bionim-main.owner = "Unaimend";
  inputs.src-bionim-main.repo = "bionim";
  inputs.src-bionim-main.ref = "refs/heads/main";
  
  
  inputs."phylogeni".type = "github";
  inputs."phylogeni".owner = "riinr";
  inputs."phylogeni".repo = "flake-nimble";
  inputs."phylogeni".ref = "flake-pinning";
  inputs."phylogeni".dir = "nimpkgs/p/phylogeni";

  
  inputs."bio_seq".type = "github";
  inputs."bio_seq".owner = "riinr";
  inputs."bio_seq".repo = "flake-nimble";
  inputs."bio_seq".ref = "flake-pinning";
  inputs."bio_seq".dir = "nimpkgs/b/bio_seq";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bionim-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bionim-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bionim-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}