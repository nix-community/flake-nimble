{
  description = ''Desktop notifications'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."notification-master".type = "github";
  inputs."notification-master".owner = "riinr";
  inputs."notification-master".repo = "flake-nimble";
  inputs."notification-master".ref = "flake-pinning";
  inputs."notification-master".dir = "nimpkgs/n/notification/master";
  inputs."notification-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notification-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."notification-v0_1_0".type = "github";
  inputs."notification-v0_1_0".owner = "riinr";
  inputs."notification-v0_1_0".repo = "flake-nimble";
  inputs."notification-v0_1_0".ref = "flake-pinning";
  inputs."notification-v0_1_0".dir = "nimpkgs/n/notification/v0_1_0";
  inputs."notification-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notification-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."notification-v0_1_1".type = "github";
  inputs."notification-v0_1_1".owner = "riinr";
  inputs."notification-v0_1_1".repo = "flake-nimble";
  inputs."notification-v0_1_1".ref = "flake-pinning";
  inputs."notification-v0_1_1".dir = "nimpkgs/n/notification/v0_1_1";
  inputs."notification-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notification-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."notification-v0_2_0".type = "github";
  inputs."notification-v0_2_0".owner = "riinr";
  inputs."notification-v0_2_0".repo = "flake-nimble";
  inputs."notification-v0_2_0".ref = "flake-pinning";
  inputs."notification-v0_2_0".dir = "nimpkgs/n/notification/v0_2_0";
  inputs."notification-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notification-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}