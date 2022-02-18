{
  description = ''A command and library to generate mazes'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."maze-master".type = "github";
  inputs."maze-master".owner = "riinr";
  inputs."maze-master".repo = "flake-nimble";
  inputs."maze-master".ref = "flake-pinning";
  inputs."maze-master".dir = "nimpkgs/m/maze/master";

    inputs."maze-1_0_0".type = "github";
  inputs."maze-1_0_0".owner = "riinr";
  inputs."maze-1_0_0".repo = "flake-nimble";
  inputs."maze-1_0_0".ref = "flake-pinning";
  inputs."maze-1_0_0".dir = "nimpkgs/m/maze/1_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}