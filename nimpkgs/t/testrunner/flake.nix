{
  description = ''Test runner with file monitoring and desktop notification capabilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."testrunner-master".type = "github";
  inputs."testrunner-master".owner = "riinr";
  inputs."testrunner-master".repo = "flake-nimble";
  inputs."testrunner-master".ref = "flake-pinning";
  inputs."testrunner-master".dir = "nimpkgs/t/testrunner/master";
  inputs."testrunner-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testrunner-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."testrunner-0_1_0".type = "github";
  inputs."testrunner-0_1_0".owner = "riinr";
  inputs."testrunner-0_1_0".repo = "flake-nimble";
  inputs."testrunner-0_1_0".ref = "flake-pinning";
  inputs."testrunner-0_1_0".dir = "nimpkgs/t/testrunner/0_1_0";
  inputs."testrunner-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testrunner-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}