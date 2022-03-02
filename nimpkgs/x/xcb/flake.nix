{
  description = ''xcb bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xcb-master".type = "github";
  inputs."xcb-master".owner = "riinr";
  inputs."xcb-master".repo = "flake-nimble";
  inputs."xcb-master".ref = "flake-pinning";
  inputs."xcb-master".dir = "nimpkgs/x/xcb/master";
  inputs."xcb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xcb-v0_1_0".type = "github";
  inputs."xcb-v0_1_0".owner = "riinr";
  inputs."xcb-v0_1_0".repo = "flake-nimble";
  inputs."xcb-v0_1_0".ref = "flake-pinning";
  inputs."xcb-v0_1_0".dir = "nimpkgs/x/xcb/v0_1_0";
  inputs."xcb-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcb-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xcb-v0_1_1".type = "github";
  inputs."xcb-v0_1_1".owner = "riinr";
  inputs."xcb-v0_1_1".repo = "flake-nimble";
  inputs."xcb-v0_1_1".ref = "flake-pinning";
  inputs."xcb-v0_1_1".dir = "nimpkgs/x/xcb/v0_1_1";
  inputs."xcb-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcb-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}