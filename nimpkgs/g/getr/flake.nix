{
  description = ''Benchmarking wrapper around getrusage()'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."getr-master".type = "github";
  inputs."getr-master".owner = "riinr";
  inputs."getr-master".repo = "flake-nimble";
  inputs."getr-master".ref = "flake-pinning";
  inputs."getr-master".dir = "nimpkgs/g/getr/master";
  inputs."getr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."getr-v0_1_1".type = "github";
  inputs."getr-v0_1_1".owner = "riinr";
  inputs."getr-v0_1_1".repo = "flake-nimble";
  inputs."getr-v0_1_1".ref = "flake-pinning";
  inputs."getr-v0_1_1".dir = "nimpkgs/g/getr/v0_1_1";
  inputs."getr-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getr-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}