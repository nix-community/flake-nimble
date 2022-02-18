{
  description = ''Library for splitting a string into shell words'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."shlex-master".type = "github";
  inputs."shlex-master".owner = "riinr";
  inputs."shlex-master".repo = "flake-nimble";
  inputs."shlex-master".ref = "flake-pinning";
  inputs."shlex-master".dir = "nimpkgs/s/shlex/master";

    inputs."shlex-v0_1_0".type = "github";
  inputs."shlex-v0_1_0".owner = "riinr";
  inputs."shlex-v0_1_0".repo = "flake-nimble";
  inputs."shlex-v0_1_0".ref = "flake-pinning";
  inputs."shlex-v0_1_0".dir = "nimpkgs/s/shlex/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}