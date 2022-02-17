{
  description = ''Asynchronous PostgreSQL driver for Nim Language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."asyncpg-master".type = "github";
  inputs."asyncpg-master".owner = "riinr";
  inputs."asyncpg-master".repo = "flake-nimble";
  inputs."asyncpg-master".ref = "flake-pinning";
  inputs."asyncpg-master".dir = "nimpkgs/a/asyncpg/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}