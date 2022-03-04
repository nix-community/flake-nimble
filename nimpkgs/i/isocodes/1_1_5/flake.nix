{
  description = ''ISO codes for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-isocodes-1_1_5.flake = false;
  inputs.src-isocodes-1_1_5.type = "github";
  inputs.src-isocodes-1_1_5.owner = "kraptor";
  inputs.src-isocodes-1_1_5.repo = "isocodes";
  inputs.src-isocodes-1_1_5.ref = "refs/tags/1.1.5";
  inputs.src-isocodes-1_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-isocodes-1_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isocodes-1_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-isocodes-1_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}