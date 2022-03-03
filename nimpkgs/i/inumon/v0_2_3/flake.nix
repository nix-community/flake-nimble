{
  description = ''A high-level image I/O and manipulation library for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-inumon-v0_2_3.flake = false;
  inputs.src-inumon-v0_2_3.type = "github";
  inputs.src-inumon-v0_2_3.owner = "dizzyliam";
  inputs.src-inumon-v0_2_3.repo = "inumon";
  inputs.src-inumon-v0_2_3.ref = "refs/tags/v0.2.3";
  inputs.src-inumon-v0_2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimterop".type = "github";
  # inputs."nimterop".owner = "riinr";
  # inputs."nimterop".repo = "flake-nimble";
  # inputs."nimterop".ref = "flake-pinning";
  # inputs."nimterop".dir = "nimpkgs/n/nimterop";
  # inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."arraymancer".type = "github";
  # inputs."arraymancer".owner = "riinr";
  # inputs."arraymancer".repo = "flake-nimble";
  # inputs."arraymancer".ref = "flake-pinning";
  # inputs."arraymancer".dir = "nimpkgs/a/arraymancer";
  # inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nigui".type = "github";
  # inputs."nigui".owner = "riinr";
  # inputs."nigui".repo = "flake-nimble";
  # inputs."nigui".ref = "flake-pinning";
  # inputs."nigui".dir = "nimpkgs/n/nigui";
  # inputs."nigui".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nigui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-inumon-v0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inumon-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-inumon-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}