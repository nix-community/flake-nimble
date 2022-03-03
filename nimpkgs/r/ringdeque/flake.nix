{
  description = ''deque implementatoin using DoublyLinkedRing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ringdeque-master".type = "github";
  inputs."ringdeque-master".owner = "riinr";
  inputs."ringdeque-master".repo = "flake-nimble";
  inputs."ringdeque-master".ref = "flake-pinning";
  inputs."ringdeque-master".dir = "nimpkgs/r/ringdeque/master";
  inputs."ringdeque-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ringdeque-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}