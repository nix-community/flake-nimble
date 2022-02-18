{
  description = ''Radix tree wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimrax-master".type = "github";
  inputs."nimrax-master".owner = "riinr";
  inputs."nimrax-master".repo = "flake-nimble";
  inputs."nimrax-master".ref = "flake-pinning";
  inputs."nimrax-master".dir = "nimpkgs/n/nimrax/master";

    inputs."nimrax-v0_1_0".type = "github";
  inputs."nimrax-v0_1_0".owner = "riinr";
  inputs."nimrax-v0_1_0".repo = "flake-nimble";
  inputs."nimrax-v0_1_0".ref = "flake-pinning";
  inputs."nimrax-v0_1_0".dir = "nimpkgs/n/nimrax/v0_1_0";

    inputs."nimrax-v0_1_1".type = "github";
  inputs."nimrax-v0_1_1".owner = "riinr";
  inputs."nimrax-v0_1_1".repo = "flake-nimble";
  inputs."nimrax-v0_1_1".ref = "flake-pinning";
  inputs."nimrax-v0_1_1".dir = "nimpkgs/n/nimrax/v0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}