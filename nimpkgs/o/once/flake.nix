{
  description = ''Once provides a type that will enforce that a callback is invoked only once.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."once-master".type = "github";
  inputs."once-master".owner = "riinr";
  inputs."once-master".repo = "flake-nimble";
  inputs."once-master".ref = "flake-pinning";
  inputs."once-master".dir = "nimpkgs/o/once/master";

    inputs."once-1_0_0".type = "github";
  inputs."once-1_0_0".owner = "riinr";
  inputs."once-1_0_0".repo = "flake-nimble";
  inputs."once-1_0_0".ref = "flake-pinning";
  inputs."once-1_0_0".dir = "nimpkgs/o/once/1_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}