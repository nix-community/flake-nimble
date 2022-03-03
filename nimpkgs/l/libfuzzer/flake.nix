{
  description = ''Thin interface for libFuzzer, an in-process, coverage-guided, evolutionary fuzzing engine.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libfuzzer-master".type = "github";
  inputs."libfuzzer-master".owner = "riinr";
  inputs."libfuzzer-master".repo = "flake-nimble";
  inputs."libfuzzer-master".ref = "flake-pinning";
  inputs."libfuzzer-master".dir = "nimpkgs/l/libfuzzer/master";
  inputs."libfuzzer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libfuzzer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}