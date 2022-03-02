{
  description = ''subnet prints subnet mask in human readable.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."subnet-master".type = "github";
  inputs."subnet-master".owner = "riinr";
  inputs."subnet-master".repo = "flake-nimble";
  inputs."subnet-master".ref = "flake-pinning";
  inputs."subnet-master".dir = "nimpkgs/s/subnet/master";
  inputs."subnet-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subnet-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."subnet-v1_0_0".type = "github";
  inputs."subnet-v1_0_0".owner = "riinr";
  inputs."subnet-v1_0_0".repo = "flake-nimble";
  inputs."subnet-v1_0_0".ref = "flake-pinning";
  inputs."subnet-v1_0_0".dir = "nimpkgs/s/subnet/v1_0_0";
  inputs."subnet-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subnet-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."subnet-v1_0_1".type = "github";
  inputs."subnet-v1_0_1".owner = "riinr";
  inputs."subnet-v1_0_1".repo = "flake-nimble";
  inputs."subnet-v1_0_1".ref = "flake-pinning";
  inputs."subnet-v1_0_1".dir = "nimpkgs/s/subnet/v1_0_1";
  inputs."subnet-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subnet-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}