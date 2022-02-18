{
  description = ''Another micro web framework.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-prologue-v0_4_2.flake = false;
  inputs.src-prologue-v0_4_2.type = "github";
  inputs.src-prologue-v0_4_2.owner = "planety";
  inputs.src-prologue-v0_4_2.repo = "Prologue";
  inputs.src-prologue-v0_4_2.ref = "refs/tags/v0.4.2";
  
  
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

  
  inputs."cookiejar".type = "github";
  inputs."cookiejar".owner = "riinr";
  inputs."cookiejar".repo = "flake-nimble";
  inputs."cookiejar".ref = "flake-pinning";
  inputs."cookiejar".dir = "nimpkgs/c/cookiejar";

  
  inputs."httpx".type = "github";
  inputs."httpx".owner = "riinr";
  inputs."httpx".repo = "flake-nimble";
  inputs."httpx".ref = "flake-pinning";
  inputs."httpx".dir = "nimpkgs/h/httpx";

  
  inputs."logue".type = "github";
  inputs."logue".owner = "riinr";
  inputs."logue".repo = "flake-nimble";
  inputs."logue".ref = "flake-pinning";
  inputs."logue".dir = "nimpkgs/l/logue";

  outputs = { self, nixpkgs, flakeNimbleLib, src-prologue-v0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prologue-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-prologue-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}