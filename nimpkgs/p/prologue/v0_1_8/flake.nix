{
  description = ''Another micro web framework.'';
  inputs.src-prologue-v0_1_8.flake = false;
  inputs.src-prologue-v0_1_8.type = "github";
  inputs.src-prologue-v0_1_8.owner = "planety";
  inputs.src-prologue-v0_1_8.repo = "Prologue";
  inputs.src-prologue-v0_1_8.ref = "refs/tags/v0.1.8";
  
  
  inputs."regex".url = "path:../../../r/regex";
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."karax".url = "path:../../../k/karax";
  inputs."karax".type = "github";
  inputs."karax".owner = "riinr";
  inputs."karax".repo = "flake-nimble";
  inputs."karax".ref = "flake-pinning";
  inputs."karax".dir = "nimpkgs/k/karax";

  
  inputs."https://github.com/planety/cookies".url = "path:../../../h/https://github.com/planety/cookies";
  inputs."https://github.com/planety/cookies".type = "github";
  inputs."https://github.com/planety/cookies".owner = "riinr";
  inputs."https://github.com/planety/cookies".repo = "flake-nimble";
  inputs."https://github.com/planety/cookies".ref = "flake-pinning";
  inputs."https://github.com/planety/cookies".dir = "nimpkgs/h/https://github.com/planety/cookies";

  
  inputs."httpbeast".url = "path:../../../h/httpbeast";
  inputs."httpbeast".type = "github";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".repo = "flake-nimble";
  inputs."httpbeast".ref = "flake-pinning";
  inputs."httpbeast".dir = "nimpkgs/h/httpbeast";

  outputs = { self, nixpkgs, src-prologue-v0_1_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prologue-v0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-prologue-v0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}