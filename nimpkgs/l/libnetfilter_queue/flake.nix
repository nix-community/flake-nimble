{
  description = ''libnetfilter_queue wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libnetfilter_queue-master".type = "github";
  inputs."libnetfilter_queue-master".owner = "riinr";
  inputs."libnetfilter_queue-master".repo = "flake-nimble";
  inputs."libnetfilter_queue-master".ref = "flake-pinning";
  inputs."libnetfilter_queue-master".dir = "nimpkgs/l/libnetfilter_queue/master";
  inputs."libnetfilter_queue-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnetfilter_queue-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."libnetfilter_queue-0_1_0".type = "github";
  inputs."libnetfilter_queue-0_1_0".owner = "riinr";
  inputs."libnetfilter_queue-0_1_0".repo = "flake-nimble";
  inputs."libnetfilter_queue-0_1_0".ref = "flake-pinning";
  inputs."libnetfilter_queue-0_1_0".dir = "nimpkgs/l/libnetfilter_queue/0_1_0";
  inputs."libnetfilter_queue-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnetfilter_queue-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}