{
  description = ''A port of HSLuv, a human friendly alternative to HSL.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."hsluv-master".type = "github";
  inputs."hsluv-master".owner = "riinr";
  inputs."hsluv-master".repo = "flake-nimble";
  inputs."hsluv-master".ref = "flake-pinning";
  inputs."hsluv-master".dir = "nimpkgs/h/hsluv/master";
  inputs."hsluv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hsluv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hsluv-1_0_0".type = "github";
  inputs."hsluv-1_0_0".owner = "riinr";
  inputs."hsluv-1_0_0".repo = "flake-nimble";
  inputs."hsluv-1_0_0".ref = "flake-pinning";
  inputs."hsluv-1_0_0".dir = "nimpkgs/h/hsluv/1_0_0";
  inputs."hsluv-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hsluv-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}