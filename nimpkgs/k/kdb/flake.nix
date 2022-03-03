{
  description = ''Nim structs to work with Kdb in type-safe manner and low-level Nim to Kdb bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."kdb-master".type = "github";
  inputs."kdb-master".owner = "riinr";
  inputs."kdb-master".repo = "flake-nimble";
  inputs."kdb-master".ref = "flake-pinning";
  inputs."kdb-master".dir = "nimpkgs/k/kdb/master";
  inputs."kdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}