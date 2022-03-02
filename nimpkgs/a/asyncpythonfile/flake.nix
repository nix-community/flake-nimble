{
  description = ''High level, asynchronous file API mimicking Python's file interface.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."asyncpythonfile-master".type = "github";
  inputs."asyncpythonfile-master".owner = "riinr";
  inputs."asyncpythonfile-master".repo = "flake-nimble";
  inputs."asyncpythonfile-master".ref = "flake-pinning";
  inputs."asyncpythonfile-master".dir = "nimpkgs/a/asyncpythonfile/master";
  inputs."asyncpythonfile-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncpythonfile-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."asyncpythonfile-v0_1_0".type = "github";
  inputs."asyncpythonfile-v0_1_0".owner = "riinr";
  inputs."asyncpythonfile-v0_1_0".repo = "flake-nimble";
  inputs."asyncpythonfile-v0_1_0".ref = "flake-pinning";
  inputs."asyncpythonfile-v0_1_0".dir = "nimpkgs/a/asyncpythonfile/v0_1_0";
  inputs."asyncpythonfile-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncpythonfile-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}