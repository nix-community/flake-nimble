{
  description = ''Utilities for use with IP. It has functions for IPv4, IPv6 and CIDR.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."iputils-master".type = "github";
  inputs."iputils-master".owner = "riinr";
  inputs."iputils-master".repo = "flake-nimble";
  inputs."iputils-master".ref = "flake-pinning";
  inputs."iputils-master".dir = "nimpkgs/i/iputils/master";

    inputs."iputils-v0_1_0".type = "github";
  inputs."iputils-v0_1_0".owner = "riinr";
  inputs."iputils-v0_1_0".repo = "flake-nimble";
  inputs."iputils-v0_1_0".ref = "flake-pinning";
  inputs."iputils-v0_1_0".dir = "nimpkgs/i/iputils/v0_1_0";

    inputs."iputils-v0_2_0".type = "github";
  inputs."iputils-v0_2_0".owner = "riinr";
  inputs."iputils-v0_2_0".repo = "flake-nimble";
  inputs."iputils-v0_2_0".ref = "flake-pinning";
  inputs."iputils-v0_2_0".dir = "nimpkgs/i/iputils/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}