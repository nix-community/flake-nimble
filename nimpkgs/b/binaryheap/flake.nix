{
  description = ''Simple binary heap implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."binaryheap-master".type = "github";
  inputs."binaryheap-master".owner = "riinr";
  inputs."binaryheap-master".repo = "flake-nimble";
  inputs."binaryheap-master".ref = "flake-pinning";
  inputs."binaryheap-master".dir = "nimpkgs/b/binaryheap/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}