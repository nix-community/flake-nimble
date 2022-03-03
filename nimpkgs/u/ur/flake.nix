{
  description = ''A Universal Result macro/object that normalizes the information returned from a procedure'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ur-master".type = "github";
  inputs."ur-master".owner = "riinr";
  inputs."ur-master".repo = "flake-nimble";
  inputs."ur-master".ref = "flake-pinning";
  inputs."ur-master".dir = "nimpkgs/u/ur/master";
  inputs."ur-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ur-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ur-v0_1_1".type = "github";
  inputs."ur-v0_1_1".owner = "riinr";
  inputs."ur-v0_1_1".repo = "flake-nimble";
  inputs."ur-v0_1_1".ref = "flake-pinning";
  inputs."ur-v0_1_1".dir = "nimpkgs/u/ur/v0_1_1";
  inputs."ur-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ur-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}