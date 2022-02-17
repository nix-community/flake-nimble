{
  description = ''Another micro web framework.'';
  inputs.src-prologue-v0_2_4.flake = false;
  inputs.src-prologue-v0_2_4.type = "github";
  inputs.src-prologue-v0_2_4.owner = "planety";
  inputs.src-prologue-v0_2_4.repo = "Prologue";
  inputs.src-prologue-v0_2_4.ref = "refs/tags/v0.2.4";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."karax".type = "github";
  inputs."karax".owner = "riinr";
  inputs."karax".repo = "flake-nimble";
  inputs."karax".ref = "flake-pinning";
  inputs."karax".dir = "nimpkgs/k/karax";

  
  inputs."cookies".type = "github";
  inputs."cookies".owner = "riinr";
  inputs."cookies".repo = "flake-nimble";
  inputs."cookies".ref = "flake-pinning";
  inputs."cookies".dir = "nimpkgs/c/cookies";

  
  inputs."httpbeast".type = "github";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".repo = "flake-nimble";
  inputs."httpbeast".ref = "flake-pinning";
  inputs."httpbeast".dir = "nimpkgs/h/httpbeast";

  outputs = { self, nixpkgs, src-prologue-v0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prologue-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-prologue-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}