{
  description = ''Thin interface for libFuzzer, an in-process, coverage-guided, evolutionary fuzzing engine.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."libfuzzer-master".type = "github";
  inputs."libfuzzer-master".owner = "riinr";
  inputs."libfuzzer-master".repo = "flake-nimble";
  inputs."libfuzzer-master".ref = "flake-pinning";
  inputs."libfuzzer-master".dir = "nimpkgs/l/libfuzzer/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}