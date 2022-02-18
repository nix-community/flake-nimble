{
  description = ''Export Nim functions to sqlite3'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."exporttosqlite3-main".type = "github";
  inputs."exporttosqlite3-main".owner = "riinr";
  inputs."exporttosqlite3-main".repo = "flake-nimble";
  inputs."exporttosqlite3-main".ref = "flake-pinning";
  inputs."exporttosqlite3-main".dir = "nimpkgs/e/exporttosqlite3/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}