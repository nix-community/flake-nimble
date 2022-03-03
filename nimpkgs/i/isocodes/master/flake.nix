{
  description = ''ISO codes for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-isocodes-master.flake = false;
  inputs.src-isocodes-master.type = "github";
  inputs.src-isocodes-master.owner = "kraptor";
  inputs.src-isocodes-master.repo = "isocodes";
  inputs.src-isocodes-master.ref = "refs/heads/master";
  inputs.src-isocodes-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jsony".type = "github";
  # inputs."jsony".owner = "riinr";
  # inputs."jsony".repo = "flake-nimble";
  # inputs."jsony".ref = "flake-pinning";
  # inputs."jsony".dir = "nimpkgs/j/jsony";
  # inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-isocodes-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isocodes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-isocodes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}