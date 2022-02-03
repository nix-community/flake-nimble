{
  description = ''Distances is a high performance Nim library for calculating distances.'';
  inputs.src-distances-master.flake = false;
  inputs.src-distances-master.type = "github";
  inputs.src-distances-master.owner = "ayman-albaz";
  inputs.src-distances-master.repo = "distances";
  inputs.src-distances-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-distances-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-distances-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-distances-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}