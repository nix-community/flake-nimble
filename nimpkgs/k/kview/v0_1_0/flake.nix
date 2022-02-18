{
  description = ''For karax html preview.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-kview-v0_1_0.flake = false;
  inputs.src-kview-v0_1_0.type = "github";
  inputs.src-kview-v0_1_0.owner = "planety";
  inputs.src-kview-v0_1_0.repo = "kview";
  inputs.src-kview-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."karax".type = "github";
  inputs."karax".owner = "riinr";
  inputs."karax".repo = "flake-nimble";
  inputs."karax".ref = "flake-pinning";
  inputs."karax".dir = "nimpkgs/k/karax";

  outputs = { self, nixpkgs, flakeNimbleLib, src-kview-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kview-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kview-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}