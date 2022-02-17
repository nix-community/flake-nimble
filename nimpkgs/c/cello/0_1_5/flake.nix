{
  description = ''String algorithms with succinct data structures'';
  inputs.src-cello-0_1_5.flake = false;
  inputs.src-cello-0_1_5.type = "github";
  inputs.src-cello-0_1_5.owner = "andreaferretti";
  inputs.src-cello-0_1_5.repo = "cello";
  inputs.src-cello-0_1_5.ref = "refs/tags/0.1.5";
  
  
  inputs."spills".type = "github";
  inputs."spills".owner = "riinr";
  inputs."spills".repo = "flake-nimble";
  inputs."spills".ref = "flake-pinning";
  inputs."spills".dir = "nimpkgs/s/spills";

  outputs = { self, nixpkgs, src-cello-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cello-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cello-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}