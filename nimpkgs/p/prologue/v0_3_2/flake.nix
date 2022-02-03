{
  description = ''Another micro web framework.'';
  inputs.src-prologue-v0_3_2.flake = false;
  inputs.src-prologue-v0_3_2.type = "github";
  inputs.src-prologue-v0_3_2.owner = "planety";
  inputs.src-prologue-v0_3_2.repo = "Prologue";
  inputs.src-prologue-v0_3_2.ref = "refs/tags/v0.3.2";
  
  
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

  
  inputs."cookies".url = "path:../../../c/cookies";
  inputs."cookies".type = "github";
  inputs."cookies".owner = "riinr";
  inputs."cookies".repo = "flake-nimble";
  inputs."cookies".ref = "flake-pinning";
  inputs."cookies".dir = "nimpkgs/c/cookies";

  
  inputs."https://github.com/xflywind/httpx".url = "path:../../../h/https://github.com/xflywind/httpx";
  inputs."https://github.com/xflywind/httpx".type = "github";
  inputs."https://github.com/xflywind/httpx".owner = "riinr";
  inputs."https://github.com/xflywind/httpx".repo = "flake-nimble";
  inputs."https://github.com/xflywind/httpx".ref = "flake-pinning";
  inputs."https://github.com/xflywind/httpx".dir = "nimpkgs/h/https://github.com/xflywind/httpx";

  outputs = { self, nixpkgs, src-prologue-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prologue-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-prologue-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}