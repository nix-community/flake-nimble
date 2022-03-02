{
  description = ''Distances is a high performance Nim library for calculating distances.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-distances-v0_1_1.flake = false;
  inputs.src-distances-v0_1_1.type = "github";
  inputs.src-distances-v0_1_1.owner = "ayman-albaz";
  inputs.src-distances-v0_1_1.repo = "distances";
  inputs.src-distances-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-distances-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."arraymancer".type = "github";
  # inputs."arraymancer".owner = "riinr";
  # inputs."arraymancer".repo = "flake-nimble";
  # inputs."arraymancer".ref = "flake-pinning";
  # inputs."arraymancer".dir = "nimpkgs/a/arraymancer";
  # inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."neo".type = "github";
  # inputs."neo".owner = "riinr";
  # inputs."neo".repo = "flake-nimble";
  # inputs."neo".ref = "flake-pinning";
  # inputs."neo".dir = "nimpkgs/n/neo";
  # inputs."neo".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."neo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-distances-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-distances-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-distances-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}