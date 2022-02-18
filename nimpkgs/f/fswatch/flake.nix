{
  description = ''Wrapper for the fswatch library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."fswatch-master".type = "github";
  inputs."fswatch-master".owner = "riinr";
  inputs."fswatch-master".repo = "flake-nimble";
  inputs."fswatch-master".ref = "flake-pinning";
  inputs."fswatch-master".dir = "nimpkgs/f/fswatch/master";

    inputs."fswatch-0_1_0".type = "github";
  inputs."fswatch-0_1_0".owner = "riinr";
  inputs."fswatch-0_1_0".repo = "flake-nimble";
  inputs."fswatch-0_1_0".ref = "flake-pinning";
  inputs."fswatch-0_1_0".dir = "nimpkgs/f/fswatch/0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}