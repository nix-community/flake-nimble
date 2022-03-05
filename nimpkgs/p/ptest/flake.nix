{
  description = ''Print-testing for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ptest-master".type = "github";
  inputs."ptest-master".owner = "riinr";
  inputs."ptest-master".repo = "flake-nimble";
  inputs."ptest-master".ref = "flake-pinning";
  inputs."ptest-master".dir = "nimpkgs/p/ptest/master";
  inputs."ptest-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptest-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ptest-v0_1_0".type = "github";
  inputs."ptest-v0_1_0".owner = "riinr";
  inputs."ptest-v0_1_0".repo = "flake-nimble";
  inputs."ptest-v0_1_0".ref = "flake-pinning";
  inputs."ptest-v0_1_0".dir = "nimpkgs/p/ptest/v0_1_0";
  inputs."ptest-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptest-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}