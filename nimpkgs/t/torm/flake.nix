{
  description = ''Tiny object relational mapper (torm) for SQLite in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."torm-main".type = "github";
  inputs."torm-main".owner = "riinr";
  inputs."torm-main".repo = "flake-nimble";
  inputs."torm-main".ref = "flake-pinning";
  inputs."torm-main".dir = "nimpkgs/t/torm/main";
  inputs."torm-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torm-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}