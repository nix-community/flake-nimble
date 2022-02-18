{
  description = ''Monocypher'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-monocypher-v0_1_0.flake = false;
  inputs.src-monocypher-v0_1_0.type = "github";
  inputs.src-monocypher-v0_1_0.owner = "markspanbroek";
  inputs.src-monocypher-v0_1_0.repo = "monocypher.nim";
  inputs.src-monocypher-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  
  inputs."sysrandom".type = "github";
  inputs."sysrandom".owner = "riinr";
  inputs."sysrandom".repo = "flake-nimble";
  inputs."sysrandom".ref = "flake-pinning";
  inputs."sysrandom".dir = "nimpkgs/s/sysrandom";

  outputs = { self, nixpkgs, flakeNimbleLib, src-monocypher-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-monocypher-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-monocypher-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}