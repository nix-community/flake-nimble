{
  description = ''Audius is a simple client library for interacting with the Audius free API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-audius-v0_1_2.flake = false;
  inputs.src-audius-v0_1_2.type = "github";
  inputs.src-audius-v0_1_2.owner = "ceebeel";
  inputs.src-audius-v0_1_2.repo = "audius";
  inputs.src-audius-v0_1_2.ref = "refs/tags/v0.1.2";
  inputs.src-audius-v0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."jsony".type = "github";
  # inputs."jsony".owner = "riinr";
  # inputs."jsony".repo = "flake-nimble";
  # inputs."jsony".ref = "flake-pinning";
  # inputs."jsony".dir = "nimpkgs/j/jsony";
  # inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-audius-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-audius-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-audius-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}