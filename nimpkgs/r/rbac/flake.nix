{
  description = ''Simple Role-based Access Control Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rbac-master".type = "github";
  inputs."rbac-master".owner = "riinr";
  inputs."rbac-master".repo = "flake-nimble";
  inputs."rbac-master".ref = "flake-pinning";
  inputs."rbac-master".dir = "nimpkgs/r/rbac/master";
  inputs."rbac-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbac-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rbac-0_1_0".type = "github";
  inputs."rbac-0_1_0".owner = "riinr";
  inputs."rbac-0_1_0".repo = "flake-nimble";
  inputs."rbac-0_1_0".ref = "flake-pinning";
  inputs."rbac-0_1_0".dir = "nimpkgs/r/rbac/0_1_0";
  inputs."rbac-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbac-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}