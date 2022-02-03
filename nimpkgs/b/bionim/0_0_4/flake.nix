{
  description = ''This package tries to provide a lot of the most useful data structures and alogrithms need in the different subfield of bio informatics'';
  inputs.src-bionim-0_0_4.flake = false;
  inputs.src-bionim-0_0_4.type = "github";
  inputs.src-bionim-0_0_4.owner = "Unaimend";
  inputs.src-bionim-0_0_4.repo = "bionim";
  inputs.src-bionim-0_0_4.ref = "refs/tags/0.0.4";
  
  
  inputs."phylogeni".url = "path:../../../p/phylogeni";
  inputs."phylogeni".type = "github";
  inputs."phylogeni".owner = "riinr";
  inputs."phylogeni".repo = "flake-nimble";
  inputs."phylogeni".ref = "flake-pinning";
  inputs."phylogeni".dir = "nimpkgs/p/phylogeni";

  
  inputs."bio_seq".url = "path:../../../b/bio_seq";
  inputs."bio_seq".type = "github";
  inputs."bio_seq".owner = "riinr";
  inputs."bio_seq".repo = "flake-nimble";
  inputs."bio_seq".ref = "flake-pinning";
  inputs."bio_seq".dir = "nimpkgs/b/bio_seq";

  outputs = { self, nixpkgs, src-bionim-0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bionim-0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bionim-0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}