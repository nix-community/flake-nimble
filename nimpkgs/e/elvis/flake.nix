{
  description = ''The elvis package implements a 'truthy', 'ternary' and a 'coalesce' operator to Nim as syntactic sugar for working with conditional expressions'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."elvis-master".type = "github";
  inputs."elvis-master".owner = "riinr";
  inputs."elvis-master".repo = "flake-nimble";
  inputs."elvis-master".ref = "flake-pinning";
  inputs."elvis-master".dir = "nimpkgs/e/elvis/master";

    inputs."elvis-v0_3_0".type = "github";
  inputs."elvis-v0_3_0".owner = "riinr";
  inputs."elvis-v0_3_0".repo = "flake-nimble";
  inputs."elvis-v0_3_0".ref = "flake-pinning";
  inputs."elvis-v0_3_0".dir = "nimpkgs/e/elvis/v0_3_0";

    inputs."elvis-v0_4_0".type = "github";
  inputs."elvis-v0_4_0".owner = "riinr";
  inputs."elvis-v0_4_0".repo = "flake-nimble";
  inputs."elvis-v0_4_0".ref = "flake-pinning";
  inputs."elvis-v0_4_0".dir = "nimpkgs/e/elvis/v0_4_0";

    inputs."elvis-v0_5_0".type = "github";
  inputs."elvis-v0_5_0".owner = "riinr";
  inputs."elvis-v0_5_0".repo = "flake-nimble";
  inputs."elvis-v0_5_0".ref = "flake-pinning";
  inputs."elvis-v0_5_0".dir = "nimpkgs/e/elvis/v0_5_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}