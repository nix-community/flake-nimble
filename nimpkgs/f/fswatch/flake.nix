{
  description = ''Wrapper for the fswatch library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fswatch-master".type = "github";
  inputs."fswatch-master".owner = "riinr";
  inputs."fswatch-master".repo = "flake-nimble";
  inputs."fswatch-master".ref = "flake-pinning";
  inputs."fswatch-master".dir = "nimpkgs/f/fswatch/master";
  inputs."fswatch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fswatch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fswatch-0_1_0".type = "github";
  inputs."fswatch-0_1_0".owner = "riinr";
  inputs."fswatch-0_1_0".repo = "flake-nimble";
  inputs."fswatch-0_1_0".ref = "flake-pinning";
  inputs."fswatch-0_1_0".dir = "nimpkgs/f/fswatch/0_1_0";
  inputs."fswatch-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fswatch-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}