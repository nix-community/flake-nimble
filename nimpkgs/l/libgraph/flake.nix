{
  description = ''Converts 2D linear graph coordinates to pixels on screen'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libgraph-master".type = "github";
  inputs."libgraph-master".owner = "riinr";
  inputs."libgraph-master".repo = "flake-nimble";
  inputs."libgraph-master".ref = "flake-pinning";
  inputs."libgraph-master".dir = "nimpkgs/l/libgraph/master";
  inputs."libgraph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libgraph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}