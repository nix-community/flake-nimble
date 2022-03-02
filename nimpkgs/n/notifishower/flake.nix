{
  description = ''Small program to draw notifications on the screen in a highly customisable way'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."notifishower-master".type = "github";
  inputs."notifishower-master".owner = "riinr";
  inputs."notifishower-master".repo = "flake-nimble";
  inputs."notifishower-master".ref = "flake-pinning";
  inputs."notifishower-master".dir = "nimpkgs/n/notifishower/master";
  inputs."notifishower-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."notifishower-v0_3_0".type = "github";
  inputs."notifishower-v0_3_0".owner = "riinr";
  inputs."notifishower-v0_3_0".repo = "flake-nimble";
  inputs."notifishower-v0_3_0".ref = "flake-pinning";
  inputs."notifishower-v0_3_0".dir = "nimpkgs/n/notifishower/v0_3_0";
  inputs."notifishower-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."notifishower-v0_5_0".type = "github";
  inputs."notifishower-v0_5_0".owner = "riinr";
  inputs."notifishower-v0_5_0".repo = "flake-nimble";
  inputs."notifishower-v0_5_0".ref = "flake-pinning";
  inputs."notifishower-v0_5_0".dir = "nimpkgs/n/notifishower/v0_5_0";
  inputs."notifishower-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."notifishower-v0_6_0".type = "github";
  inputs."notifishower-v0_6_0".owner = "riinr";
  inputs."notifishower-v0_6_0".repo = "flake-nimble";
  inputs."notifishower-v0_6_0".ref = "flake-pinning";
  inputs."notifishower-v0_6_0".dir = "nimpkgs/n/notifishower/v0_6_0";
  inputs."notifishower-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."notifishower-v0_7_0".type = "github";
  inputs."notifishower-v0_7_0".owner = "riinr";
  inputs."notifishower-v0_7_0".repo = "flake-nimble";
  inputs."notifishower-v0_7_0".ref = "flake-pinning";
  inputs."notifishower-v0_7_0".dir = "nimpkgs/n/notifishower/v0_7_0";
  inputs."notifishower-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}