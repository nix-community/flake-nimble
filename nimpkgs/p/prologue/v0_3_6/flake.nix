{
  description = ''Another micro web framework.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-prologue-v0_3_6.flake = false;
  inputs.src-prologue-v0_3_6.type = "github";
  inputs.src-prologue-v0_3_6.owner = "planety";
  inputs.src-prologue-v0_3_6.repo = "Prologue";
  inputs.src-prologue-v0_3_6.ref = "refs/tags/v0.3.6";
  inputs.src-prologue-v0_3_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  
  # inputs."cookiejar".type = "github";
  # inputs."cookiejar".owner = "riinr";
  # inputs."cookiejar".repo = "flake-nimble";
  # inputs."cookiejar".ref = "flake-pinning";
  # inputs."cookiejar".dir = "nimpkgs/c/cookiejar";
  # inputs."cookiejar".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cookiejar".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."httpx".type = "github";
  # inputs."httpx".owner = "riinr";
  # inputs."httpx".repo = "flake-nimble";
  # inputs."httpx".ref = "flake-pinning";
  # inputs."httpx".dir = "nimpkgs/h/httpx";
  # inputs."httpx".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."httpx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-prologue-v0_3_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prologue-v0_3_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-prologue-v0_3_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}