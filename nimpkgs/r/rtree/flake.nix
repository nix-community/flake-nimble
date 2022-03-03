{
  description = ''R-Tree'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rtree-master".type = "github";
  inputs."rtree-master".owner = "riinr";
  inputs."rtree-master".repo = "flake-nimble";
  inputs."rtree-master".ref = "flake-pinning";
  inputs."rtree-master".dir = "nimpkgs/r/rtree/master";
  inputs."rtree-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rtree-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}