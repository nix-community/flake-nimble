{
  description = ''A helper module for writing unit tests in Nim with nake or similar build system.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."findtests-master".type = "github";
  inputs."findtests-master".owner = "riinr";
  inputs."findtests-master".repo = "flake-nimble";
  inputs."findtests-master".ref = "flake-pinning";
  inputs."findtests-master".dir = "nimpkgs/f/findtests/master";
  inputs."findtests-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."findtests-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}