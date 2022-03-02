{
  description = ''Basic operations on singly and doubly linked lists.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."listsv-master".type = "github";
  inputs."listsv-master".owner = "riinr";
  inputs."listsv-master".repo = "flake-nimble";
  inputs."listsv-master".ref = "flake-pinning";
  inputs."listsv-master".dir = "nimpkgs/l/listsv/master";
  inputs."listsv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listsv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}