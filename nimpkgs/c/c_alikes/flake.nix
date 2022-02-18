{
  description = ''Operators, commands and functions more c-like, plus a few other utilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."c_alikes-master".type = "github";
  inputs."c_alikes-master".owner = "riinr";
  inputs."c_alikes-master".repo = "flake-nimble";
  inputs."c_alikes-master".ref = "flake-pinning";
  inputs."c_alikes-master".dir = "nimpkgs/c/c_alikes/master";

    inputs."c_alikes-v0_2_0".type = "github";
  inputs."c_alikes-v0_2_0".owner = "riinr";
  inputs."c_alikes-v0_2_0".repo = "flake-nimble";
  inputs."c_alikes-v0_2_0".ref = "flake-pinning";
  inputs."c_alikes-v0_2_0".dir = "nimpkgs/c/c_alikes/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}