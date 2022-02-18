{
  description = ''A simple, stateless StatsD client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."statsd_client-master".type = "github";
  inputs."statsd_client-master".owner = "riinr";
  inputs."statsd_client-master".repo = "flake-nimble";
  inputs."statsd_client-master".ref = "flake-pinning";
  inputs."statsd_client-master".dir = "nimpkgs/s/statsd_client/master";

    inputs."statsd_client-0_1_1".type = "github";
  inputs."statsd_client-0_1_1".owner = "riinr";
  inputs."statsd_client-0_1_1".repo = "flake-nimble";
  inputs."statsd_client-0_1_1".ref = "flake-pinning";
  inputs."statsd_client-0_1_1".dir = "nimpkgs/s/statsd_client/0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}