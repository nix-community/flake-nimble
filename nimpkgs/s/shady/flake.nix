{
  description = ''Nim to GPU shader language compiler and supporting utilities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."shady-master".type = "github";
  inputs."shady-master".owner = "riinr";
  inputs."shady-master".repo = "flake-nimble";
  inputs."shady-master".ref = "flake-pinning";
  inputs."shady-master".dir = "nimpkgs/s/shady/master";

    inputs."shady-0_0_1".type = "github";
  inputs."shady-0_0_1".owner = "riinr";
  inputs."shady-0_0_1".repo = "flake-nimble";
  inputs."shady-0_0_1".ref = "flake-pinning";
  inputs."shady-0_0_1".dir = "nimpkgs/s/shady/0_0_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}