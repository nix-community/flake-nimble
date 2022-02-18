{
  description = ''Nim structs to work with Kdb in type-safe manner and low-level Nim to Kdb bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-kdb-master.flake = false;
  inputs.src-kdb-master.type = "github";
  inputs.src-kdb-master.owner = "inv2004";
  inputs.src-kdb-master.repo = "kdb_nim";
  inputs.src-kdb-master.ref = "refs/heads/master";
  
  
  inputs."terminaltables".type = "github";
  inputs."terminaltables".owner = "riinr";
  inputs."terminaltables".repo = "flake-nimble";
  inputs."terminaltables".ref = "flake-pinning";
  inputs."terminaltables".dir = "nimpkgs/t/terminaltables";

  
  inputs."uuids".type = "github";
  inputs."uuids".owner = "riinr";
  inputs."uuids".repo = "flake-nimble";
  inputs."uuids".ref = "flake-pinning";
  inputs."uuids".dir = "nimpkgs/u/uuids";

  outputs = { self, nixpkgs, flakeNimbleLib, src-kdb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kdb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kdb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}