{
  description = ''A simple library to generate random data, using the system's PRNG.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."sysrandom-master".type = "github";
  inputs."sysrandom-master".owner = "riinr";
  inputs."sysrandom-master".repo = "flake-nimble";
  inputs."sysrandom-master".ref = "flake-pinning";
  inputs."sysrandom-master".dir = "nimpkgs/s/sysrandom/master";

    inputs."sysrandom-v0_1_0".type = "github";
  inputs."sysrandom-v0_1_0".owner = "riinr";
  inputs."sysrandom-v0_1_0".repo = "flake-nimble";
  inputs."sysrandom-v0_1_0".ref = "flake-pinning";
  inputs."sysrandom-v0_1_0".dir = "nimpkgs/s/sysrandom/v0_1_0";

    inputs."sysrandom-v1_0_0".type = "github";
  inputs."sysrandom-v1_0_0".owner = "riinr";
  inputs."sysrandom-v1_0_0".repo = "flake-nimble";
  inputs."sysrandom-v1_0_0".ref = "flake-pinning";
  inputs."sysrandom-v1_0_0".dir = "nimpkgs/s/sysrandom/v1_0_0";

    inputs."sysrandom-v1_1_0".type = "github";
  inputs."sysrandom-v1_1_0".owner = "riinr";
  inputs."sysrandom-v1_1_0".repo = "flake-nimble";
  inputs."sysrandom-v1_1_0".ref = "flake-pinning";
  inputs."sysrandom-v1_1_0".dir = "nimpkgs/s/sysrandom/v1_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}