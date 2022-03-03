{
  description = ''Another micro web framework.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-prologue-v0_3_2.flake = false;
  inputs.src-prologue-v0_3_2.type = "github";
  inputs.src-prologue-v0_3_2.owner = "planety";
  inputs.src-prologue-v0_3_2.repo = "Prologue";
  inputs.src-prologue-v0_3_2.ref = "refs/tags/v0.3.2";
  inputs.src-prologue-v0_3_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."regex".type = "github";
  # inputs."regex".owner = "riinr";
  # inputs."regex".repo = "flake-nimble";
  # inputs."regex".ref = "flake-pinning";
  # inputs."regex".dir = "nimpkgs/r/regex";
  # inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimcrypto".type = "github";
  # inputs."nimcrypto".owner = "riinr";
  # inputs."nimcrypto".repo = "flake-nimble";
  # inputs."nimcrypto".ref = "flake-pinning";
  # inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  # inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."karax".type = "github";
  # inputs."karax".owner = "riinr";
  # inputs."karax".repo = "flake-nimble";
  # inputs."karax".ref = "flake-pinning";
  # inputs."karax".dir = "nimpkgs/k/karax";
  # inputs."karax".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."karax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."cookies".type = "github";
  # inputs."cookies".owner = "riinr";
  # inputs."cookies".repo = "flake-nimble";
  # inputs."cookies".ref = "flake-pinning";
  # inputs."cookies".dir = "nimpkgs/c/cookies";
  # inputs."cookies".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cookies".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/xflywind/httpx".type = "github";
  # inputs."https://github.com/xflywind/httpx".owner = "riinr";
  # inputs."https://github.com/xflywind/httpx".repo = "flake-nimble";
  # inputs."https://github.com/xflywind/httpx".ref = "flake-pinning";
  # inputs."https://github.com/xflywind/httpx".dir = "nimpkgs/h/https://github.com/xflywind/httpx";
  # inputs."https://github.com/xflywind/httpx".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/xflywind/httpx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-prologue-v0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prologue-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-prologue-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}