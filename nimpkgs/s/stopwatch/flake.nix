{
  description = ''A simple timing library for benchmarking code and other things.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."stopwatch-master".type = "github";
  inputs."stopwatch-master".owner = "riinr";
  inputs."stopwatch-master".repo = "flake-nimble";
  inputs."stopwatch-master".ref = "flake-pinning";
  inputs."stopwatch-master".dir = "nimpkgs/s/stopwatch/master";

    inputs."stopwatch-v3_5".type = "github";
  inputs."stopwatch-v3_5".owner = "riinr";
  inputs."stopwatch-v3_5".repo = "flake-nimble";
  inputs."stopwatch-v3_5".ref = "flake-pinning";
  inputs."stopwatch-v3_5".dir = "nimpkgs/s/stopwatch/v3_5";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}