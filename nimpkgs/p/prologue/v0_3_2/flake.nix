{
  description = ''Another micro web framework.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-prologue-v0_3_2.flake = false;
  inputs.src-prologue-v0_3_2.type = "github";
  inputs.src-prologue-v0_3_2.owner = "planety";
  inputs.src-prologue-v0_3_2.repo = "Prologue";
  inputs.src-prologue-v0_3_2.ref = "refs/tags/v0.3.2";
  
  
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

  
  inputs."https://github.com/xflywind/httpx".type = "github";
  inputs."https://github.com/xflywind/httpx".owner = "riinr";
  inputs."https://github.com/xflywind/httpx".repo = "flake-nimble";
  inputs."https://github.com/xflywind/httpx".ref = "flake-pinning";
  inputs."https://github.com/xflywind/httpx".dir = "nimpkgs/h/https://github.com/xflywind/httpx";

  outputs = { self, nixpkgs, flakeNimbleLib, src-prologue-v0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prologue-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-prologue-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}