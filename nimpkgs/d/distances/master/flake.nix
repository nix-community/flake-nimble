{
  description = ''Distances is a high performance Nim library for calculating distances.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-distances-master.flake = false;
  inputs.src-distances-master.type = "github";
  inputs.src-distances-master.owner = "ayman-albaz";
  inputs.src-distances-master.repo = "distances";
  inputs.src-distances-master.ref = "refs/heads/master";
  inputs.src-distances-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."neo".type = "github";
  inputs."neo".owner = "riinr";
  inputs."neo".repo = "flake-nimble";
  inputs."neo".ref = "flake-pinning";
  inputs."neo".dir = "nimpkgs/n/neo";
  inputs."neo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-distances-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-distances-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-distances-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}