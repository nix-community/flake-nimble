{
  description = ''A simple interface to a running Consul agent.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."consul-master".type = "github";
  inputs."consul-master".owner = "riinr";
  inputs."consul-master".repo = "flake-nimble";
  inputs."consul-master".ref = "flake-pinning";
  inputs."consul-master".dir = "nimpkgs/c/consul/master";
  inputs."consul-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."consul-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."consul-0_0_1".type = "github";
  inputs."consul-0_0_1".owner = "riinr";
  inputs."consul-0_0_1".repo = "flake-nimble";
  inputs."consul-0_0_1".ref = "flake-pinning";
  inputs."consul-0_0_1".dir = "nimpkgs/c/consul/0_0_1";
  inputs."consul-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."consul-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}