{
  description = ''Simple Role-based Access Control Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."rbac-master".type = "github";
  inputs."rbac-master".owner = "riinr";
  inputs."rbac-master".repo = "flake-nimble";
  inputs."rbac-master".ref = "flake-pinning";
  inputs."rbac-master".dir = "nimpkgs/r/rbac/master";

    inputs."rbac-0_1_0".type = "github";
  inputs."rbac-0_1_0".owner = "riinr";
  inputs."rbac-0_1_0".repo = "flake-nimble";
  inputs."rbac-0_1_0".ref = "flake-pinning";
  inputs."rbac-0_1_0".dir = "nimpkgs/r/rbac/0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}