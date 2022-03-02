{
  description = ''etcd client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."etcd_client-master".type = "github";
  inputs."etcd_client-master".owner = "riinr";
  inputs."etcd_client-master".repo = "flake-nimble";
  inputs."etcd_client-master".ref = "flake-pinning";
  inputs."etcd_client-master".dir = "nimpkgs/e/etcd_client/master";
  inputs."etcd_client-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."etcd_client-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."etcd_client-0_1_0".type = "github";
  inputs."etcd_client-0_1_0".owner = "riinr";
  inputs."etcd_client-0_1_0".repo = "flake-nimble";
  inputs."etcd_client-0_1_0".ref = "flake-pinning";
  inputs."etcd_client-0_1_0".dir = "nimpkgs/e/etcd_client/0_1_0";
  inputs."etcd_client-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."etcd_client-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."etcd_client-0_2_0".type = "github";
  inputs."etcd_client-0_2_0".owner = "riinr";
  inputs."etcd_client-0_2_0".repo = "flake-nimble";
  inputs."etcd_client-0_2_0".ref = "flake-pinning";
  inputs."etcd_client-0_2_0".dir = "nimpkgs/e/etcd_client/0_2_0";
  inputs."etcd_client-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."etcd_client-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}