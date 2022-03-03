{
  description = ''ForestDB is fast key-value storage engine that is based on a Hierarchical B+-Tree based Trie, or HB+-Trie.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."forestdb-master".type = "github";
  inputs."forestdb-master".owner = "riinr";
  inputs."forestdb-master".repo = "flake-nimble";
  inputs."forestdb-master".ref = "flake-pinning";
  inputs."forestdb-master".dir = "nimpkgs/f/forestdb/master";
  inputs."forestdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."forestdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}