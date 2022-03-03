{
  description = ''Nim modules for access to system Bluetooth resources.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimbluez-master".type = "github";
  inputs."nimbluez-master".owner = "riinr";
  inputs."nimbluez-master".repo = "flake-nimble";
  inputs."nimbluez-master".ref = "flake-pinning";
  inputs."nimbluez-master".dir = "nimpkgs/n/nimbluez/master";
  inputs."nimbluez-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbluez-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimbluez-v0_1_0".type = "github";
  inputs."nimbluez-v0_1_0".owner = "riinr";
  inputs."nimbluez-v0_1_0".repo = "flake-nimble";
  inputs."nimbluez-v0_1_0".ref = "flake-pinning";
  inputs."nimbluez-v0_1_0".dir = "nimpkgs/n/nimbluez/v0_1_0";
  inputs."nimbluez-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbluez-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimbluez-v0_1_1".type = "github";
  inputs."nimbluez-v0_1_1".owner = "riinr";
  inputs."nimbluez-v0_1_1".repo = "flake-nimble";
  inputs."nimbluez-v0_1_1".ref = "flake-pinning";
  inputs."nimbluez-v0_1_1".dir = "nimpkgs/n/nimbluez/v0_1_1";
  inputs."nimbluez-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbluez-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimbluez-v0_1_2".type = "github";
  inputs."nimbluez-v0_1_2".owner = "riinr";
  inputs."nimbluez-v0_1_2".repo = "flake-nimble";
  inputs."nimbluez-v0_1_2".ref = "flake-pinning";
  inputs."nimbluez-v0_1_2".dir = "nimpkgs/n/nimbluez/v0_1_2";
  inputs."nimbluez-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbluez-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}