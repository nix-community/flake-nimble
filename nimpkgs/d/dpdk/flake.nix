{
  description = ''Library for fast packet processing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dpdk-master".type = "github";
  inputs."dpdk-master".owner = "riinr";
  inputs."dpdk-master".repo = "flake-nimble";
  inputs."dpdk-master".ref = "flake-pinning";
  inputs."dpdk-master".dir = "nimpkgs/d/dpdk/master";
  inputs."dpdk-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dpdk-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}