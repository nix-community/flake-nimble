{
  description = ''For karax html preview.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-kview-v0_1_0.flake = false;
  inputs.src-kview-v0_1_0.type = "github";
  inputs.src-kview-v0_1_0.owner = "planety";
  inputs.src-kview-v0_1_0.repo = "kview";
  inputs.src-kview-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-kview-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."karax".type = "github";
  # inputs."karax".owner = "riinr";
  # inputs."karax".repo = "flake-nimble";
  # inputs."karax".ref = "flake-pinning";
  # inputs."karax".dir = "nimpkgs/k/karax";
  # inputs."karax".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."karax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-kview-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kview-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kview-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}