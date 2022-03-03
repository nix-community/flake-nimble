{
  description = ''For karax html preview.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-kview-v0_1_2.flake = false;
  inputs.src-kview-v0_1_2.type = "github";
  inputs.src-kview-v0_1_2.owner = "planety";
  inputs.src-kview-v0_1_2.repo = "kview";
  inputs.src-kview-v0_1_2.ref = "refs/tags/v0.1.2";
  inputs.src-kview-v0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."karax".type = "github";
  # inputs."karax".owner = "riinr";
  # inputs."karax".repo = "flake-nimble";
  # inputs."karax".ref = "flake-pinning";
  # inputs."karax".dir = "nimpkgs/k/karax";
  # inputs."karax".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."karax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-kview-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kview-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kview-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}