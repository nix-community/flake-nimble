{
  description = ''Nim structs to work with Kdb in type-safe manner and low-level Nim to Kdb bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."kdb-master".type = "github";
  inputs."kdb-master".owner = "riinr";
  inputs."kdb-master".repo = "flake-nimble";
  inputs."kdb-master".ref = "flake-pinning";
  inputs."kdb-master".dir = "nimpkgs/k/kdb/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}