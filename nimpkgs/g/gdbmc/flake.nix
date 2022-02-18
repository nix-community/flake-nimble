{
  description = ''This library is a wrapper to C GDBM library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."gdbmc-master".type = "github";
  inputs."gdbmc-master".owner = "riinr";
  inputs."gdbmc-master".repo = "flake-nimble";
  inputs."gdbmc-master".ref = "flake-pinning";
  inputs."gdbmc-master".dir = "nimpkgs/g/gdbmc/master";

    inputs."gdbmc-v0_9_0".type = "github";
  inputs."gdbmc-v0_9_0".owner = "riinr";
  inputs."gdbmc-v0_9_0".repo = "flake-nimble";
  inputs."gdbmc-v0_9_0".ref = "flake-pinning";
  inputs."gdbmc-v0_9_0".dir = "nimpkgs/g/gdbmc/v0_9_0";

    inputs."gdbmc-v0_9_1".type = "github";
  inputs."gdbmc-v0_9_1".owner = "riinr";
  inputs."gdbmc-v0_9_1".repo = "flake-nimble";
  inputs."gdbmc-v0_9_1".ref = "flake-pinning";
  inputs."gdbmc-v0_9_1".dir = "nimpkgs/g/gdbmc/v0_9_1";

    inputs."gdbmc-v0_9_9".type = "github";
  inputs."gdbmc-v0_9_9".owner = "riinr";
  inputs."gdbmc-v0_9_9".repo = "flake-nimble";
  inputs."gdbmc-v0_9_9".ref = "flake-pinning";
  inputs."gdbmc-v0_9_9".dir = "nimpkgs/g/gdbmc/v0_9_9";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}