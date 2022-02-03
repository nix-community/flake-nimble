{
  description = ''String algorithms with succinct data structures'';
  inputs.src-cello-0_1_3.flake = false;
  inputs.src-cello-0_1_3.type = "github";
  inputs.src-cello-0_1_3.owner = "andreaferretti";
  inputs.src-cello-0_1_3.repo = "cello";
  inputs.src-cello-0_1_3.ref = "refs/tags/0.1.3";
  
  
  inputs."spills".url = "path:../../../s/spills";
  inputs."spills".type = "github";
  inputs."spills".owner = "riinr";
  inputs."spills".repo = "flake-nimble";
  inputs."spills".ref = "flake-pinning";
  inputs."spills".dir = "nimpkgs/s/spills";

  outputs = { self, nixpkgs, src-cello-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cello-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cello-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}