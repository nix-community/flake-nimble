{
  description = ''SipHash, a pseudorandom function optimized for short messages.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."siphash-master".type = "github";
  inputs."siphash-master".owner = "riinr";
  inputs."siphash-master".repo = "flake-nimble";
  inputs."siphash-master".ref = "flake-pinning";
  inputs."siphash-master".dir = "nimpkgs/s/siphash/master";

    inputs."siphash-v0_1_0".type = "github";
  inputs."siphash-v0_1_0".owner = "riinr";
  inputs."siphash-v0_1_0".repo = "flake-nimble";
  inputs."siphash-v0_1_0".ref = "flake-pinning";
  inputs."siphash-v0_1_0".dir = "nimpkgs/s/siphash/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}