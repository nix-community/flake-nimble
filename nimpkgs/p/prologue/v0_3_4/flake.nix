{
  description = ''Another micro web framework.'';
  inputs.src-prologue-v0_3_4.flake = false;
  inputs.src-prologue-v0_3_4.type = "github";
  inputs.src-prologue-v0_3_4.owner = "planety";
  inputs.src-prologue-v0_3_4.repo = "Prologue";
  inputs.src-prologue-v0_3_4.ref = "refs/tags/v0.3.4";
  
  
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

  
  inputs."cookiejar".url = "path:../../../c/cookiejar";
  inputs."cookiejar".type = "github";
  inputs."cookiejar".owner = "riinr";
  inputs."cookiejar".repo = "flake-nimble";
  inputs."cookiejar".ref = "flake-pinning";
  inputs."cookiejar".dir = "nimpkgs/c/cookiejar";

  
  inputs."httpx".url = "path:../../../h/httpx";
  inputs."httpx".type = "github";
  inputs."httpx".owner = "riinr";
  inputs."httpx".repo = "flake-nimble";
  inputs."httpx".ref = "flake-pinning";
  inputs."httpx".dir = "nimpkgs/h/httpx";

  outputs = { self, nixpkgs, src-prologue-v0_3_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prologue-v0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-prologue-v0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}