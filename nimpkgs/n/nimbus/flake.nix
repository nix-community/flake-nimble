{
  description = ''An Ethereum 2.0 Sharding Client for Resource-Restricted Devices'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimbus-master".type = "github";
  inputs."nimbus-master".owner = "riinr";
  inputs."nimbus-master".repo = "flake-nimble";
  inputs."nimbus-master".ref = "flake-pinning";
  inputs."nimbus-master".dir = "nimpkgs/n/nimbus/master";

    inputs."nimbus-201903-testnet0".type = "github";
  inputs."nimbus-201903-testnet0".owner = "riinr";
  inputs."nimbus-201903-testnet0".repo = "flake-nimble";
  inputs."nimbus-201903-testnet0".ref = "flake-pinning";
  inputs."nimbus-201903-testnet0".dir = "nimpkgs/n/nimbus/201903-testnet0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}