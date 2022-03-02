{
  description = ''A simple GUI front for Nimble.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimblegui-master".type = "github";
  inputs."nimblegui-master".owner = "riinr";
  inputs."nimblegui-master".repo = "flake-nimble";
  inputs."nimblegui-master".ref = "flake-pinning";
  inputs."nimblegui-master".dir = "nimpkgs/n/nimblegui/master";
  inputs."nimblegui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimblegui-v0_1_2".type = "github";
  inputs."nimblegui-v0_1_2".owner = "riinr";
  inputs."nimblegui-v0_1_2".repo = "flake-nimble";
  inputs."nimblegui-v0_1_2".ref = "flake-pinning";
  inputs."nimblegui-v0_1_2".dir = "nimpkgs/n/nimblegui/v0_1_2";
  inputs."nimblegui-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimblegui-v0_2_0".type = "github";
  inputs."nimblegui-v0_2_0".owner = "riinr";
  inputs."nimblegui-v0_2_0".repo = "flake-nimble";
  inputs."nimblegui-v0_2_0".ref = "flake-pinning";
  inputs."nimblegui-v0_2_0".dir = "nimpkgs/n/nimblegui/v0_2_0";
  inputs."nimblegui-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimblegui-v0_2_1".type = "github";
  inputs."nimblegui-v0_2_1".owner = "riinr";
  inputs."nimblegui-v0_2_1".repo = "flake-nimble";
  inputs."nimblegui-v0_2_1".ref = "flake-pinning";
  inputs."nimblegui-v0_2_1".dir = "nimpkgs/n/nimblegui/v0_2_1";
  inputs."nimblegui-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimblegui-v0_2_2".type = "github";
  inputs."nimblegui-v0_2_2".owner = "riinr";
  inputs."nimblegui-v0_2_2".repo = "flake-nimble";
  inputs."nimblegui-v0_2_2".ref = "flake-pinning";
  inputs."nimblegui-v0_2_2".dir = "nimpkgs/n/nimblegui/v0_2_2";
  inputs."nimblegui-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}