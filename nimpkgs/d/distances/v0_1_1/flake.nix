{
  description = ''Distances is a high performance Nim library for calculating distances.'';
  inputs.src-distances-v0_1_1.flake = false;
  inputs.src-distances-v0_1_1.type = "github";
  inputs.src-distances-v0_1_1.owner = "ayman-albaz";
  inputs.src-distances-v0_1_1.repo = "distances";
  inputs.src-distances-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."arraymancer".url = "path:../../../a/arraymancer";
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  
  inputs."neo".url = "path:../../../n/neo";
  inputs."neo".type = "github";
  inputs."neo".owner = "riinr";
  inputs."neo".repo = "flake-nimble";
  inputs."neo".ref = "flake-pinning";
  inputs."neo".dir = "nimpkgs/n/neo";

  outputs = { self, nixpkgs, src-distances-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-distances-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-distances-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}