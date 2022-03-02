{
  description = ''Graph With Weight Libary'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."weightedgraph-master".type = "github";
  inputs."weightedgraph-master".owner = "riinr";
  inputs."weightedgraph-master".repo = "flake-nimble";
  inputs."weightedgraph-master".ref = "flake-pinning";
  inputs."weightedgraph-master".dir = "nimpkgs/w/weightedgraph/master";
  inputs."weightedgraph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weightedgraph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}