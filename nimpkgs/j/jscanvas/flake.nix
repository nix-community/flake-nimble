{
  description = ''a wrapper for the Canvas API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jscanvas-master".type = "github";
  inputs."jscanvas-master".owner = "riinr";
  inputs."jscanvas-master".repo = "flake-nimble";
  inputs."jscanvas-master".ref = "flake-pinning";
  inputs."jscanvas-master".dir = "nimpkgs/j/jscanvas/master";
  inputs."jscanvas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jscanvas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jscanvas-v0_1_0".type = "github";
  inputs."jscanvas-v0_1_0".owner = "riinr";
  inputs."jscanvas-v0_1_0".repo = "flake-nimble";
  inputs."jscanvas-v0_1_0".ref = "flake-pinning";
  inputs."jscanvas-v0_1_0".dir = "nimpkgs/j/jscanvas/v0_1_0";
  inputs."jscanvas-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jscanvas-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}