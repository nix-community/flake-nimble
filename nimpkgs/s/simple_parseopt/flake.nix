{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."simple_parseopt-master".type = "github";
  inputs."simple_parseopt-master".owner = "riinr";
  inputs."simple_parseopt-master".repo = "flake-nimble";
  inputs."simple_parseopt-master".ref = "flake-pinning";
  inputs."simple_parseopt-master".dir = "nimpkgs/s/simple_parseopt/master";

    inputs."simple_parseopt-v1_0_10".type = "github";
  inputs."simple_parseopt-v1_0_10".owner = "riinr";
  inputs."simple_parseopt-v1_0_10".repo = "flake-nimble";
  inputs."simple_parseopt-v1_0_10".ref = "flake-pinning";
  inputs."simple_parseopt-v1_0_10".dir = "nimpkgs/s/simple_parseopt/v1_0_10";

    inputs."simple_parseopt-v1_0_8".type = "github";
  inputs."simple_parseopt-v1_0_8".owner = "riinr";
  inputs."simple_parseopt-v1_0_8".repo = "flake-nimble";
  inputs."simple_parseopt-v1_0_8".ref = "flake-pinning";
  inputs."simple_parseopt-v1_0_8".dir = "nimpkgs/s/simple_parseopt/v1_0_8";

    inputs."simple_parseopt-v1_0_9".type = "github";
  inputs."simple_parseopt-v1_0_9".owner = "riinr";
  inputs."simple_parseopt-v1_0_9".repo = "flake-nimble";
  inputs."simple_parseopt-v1_0_9".ref = "flake-pinning";
  inputs."simple_parseopt-v1_0_9".dir = "nimpkgs/s/simple_parseopt/v1_0_9";

    inputs."simple_parseopt-v1_1_0".type = "github";
  inputs."simple_parseopt-v1_1_0".owner = "riinr";
  inputs."simple_parseopt-v1_1_0".repo = "flake-nimble";
  inputs."simple_parseopt-v1_1_0".ref = "flake-pinning";
  inputs."simple_parseopt-v1_1_0".dir = "nimpkgs/s/simple_parseopt/v1_1_0";

    inputs."simple_parseopt-v1_1_1".type = "github";
  inputs."simple_parseopt-v1_1_1".owner = "riinr";
  inputs."simple_parseopt-v1_1_1".repo = "flake-nimble";
  inputs."simple_parseopt-v1_1_1".ref = "flake-pinning";
  inputs."simple_parseopt-v1_1_1".dir = "nimpkgs/s/simple_parseopt/v1_1_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}