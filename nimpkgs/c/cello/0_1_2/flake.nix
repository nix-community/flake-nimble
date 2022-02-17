{
  description = ''String algorithms with succinct data structures'';
  inputs.src-cello-0_1_2.flake = false;
  inputs.src-cello-0_1_2.type = "github";
  inputs.src-cello-0_1_2.owner = "andreaferretti";
  inputs.src-cello-0_1_2.repo = "cello";
  inputs.src-cello-0_1_2.ref = "refs/tags/0.1.2";
  
  
  inputs."spills".type = "github";
  inputs."spills".owner = "riinr";
  inputs."spills".repo = "flake-nimble";
  inputs."spills".ref = "flake-pinning";
  inputs."spills".dir = "nimpkgs/s/spills";

  outputs = { self, nixpkgs, src-cello-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cello-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cello-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}