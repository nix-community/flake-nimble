{
  description = ''Terminal dashboards.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."dashing-master".type = "github";
  inputs."dashing-master".owner = "riinr";
  inputs."dashing-master".repo = "flake-nimble";
  inputs."dashing-master".ref = "flake-pinning";
  inputs."dashing-master".dir = "nimpkgs/d/dashing/master";

    inputs."dashing-0_1_1".type = "github";
  inputs."dashing-0_1_1".owner = "riinr";
  inputs."dashing-0_1_1".repo = "flake-nimble";
  inputs."dashing-0_1_1".ref = "flake-pinning";
  inputs."dashing-0_1_1".dir = "nimpkgs/d/dashing/0_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}