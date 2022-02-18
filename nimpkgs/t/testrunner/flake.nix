{
  description = ''Test runner with file monitoring and desktop notification capabilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."testrunner-master".type = "github";
  inputs."testrunner-master".owner = "riinr";
  inputs."testrunner-master".repo = "flake-nimble";
  inputs."testrunner-master".ref = "flake-pinning";
  inputs."testrunner-master".dir = "nimpkgs/t/testrunner/master";

    inputs."testrunner-0_1_0".type = "github";
  inputs."testrunner-0_1_0".owner = "riinr";
  inputs."testrunner-0_1_0".repo = "flake-nimble";
  inputs."testrunner-0_1_0".ref = "flake-pinning";
  inputs."testrunner-0_1_0".dir = "nimpkgs/t/testrunner/0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}