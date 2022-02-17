{
  description = ''This package tries to provide a lot of the most useful data structures and alogrithms need in the different subfield of bio informatics'';
  inputs.src-bionim-0_0_3.flake = false;
  inputs.src-bionim-0_0_3.type = "github";
  inputs.src-bionim-0_0_3.owner = "Unaimend";
  inputs.src-bionim-0_0_3.repo = "bionim";
  inputs.src-bionim-0_0_3.ref = "refs/tags/0.0.3";
  
  
  inputs."phylogeni".type = "github";
  inputs."phylogeni".owner = "riinr";
  inputs."phylogeni".repo = "flake-nimble";
  inputs."phylogeni".ref = "flake-pinning";
  inputs."phylogeni".dir = "nimpkgs/p/phylogeni";

  outputs = { self, nixpkgs, src-bionim-0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bionim-0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bionim-0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}