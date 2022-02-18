{
  description = ''deque implementatoin using DoublyLinkedRing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."ringDeque-master".type = "github";
  inputs."ringDeque-master".owner = "riinr";
  inputs."ringDeque-master".repo = "flake-nimble";
  inputs."ringDeque-master".ref = "flake-pinning";
  inputs."ringDeque-master".dir = "nimpkgs/r/ringDeque/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}