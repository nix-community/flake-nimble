{
  description = ''miniupnpc and libnatpmp wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nat_traversal-master".type = "github";
  inputs."nat_traversal-master".owner = "riinr";
  inputs."nat_traversal-master".repo = "flake-nimble";
  inputs."nat_traversal-master".ref = "flake-pinning";
  inputs."nat_traversal-master".dir = "nimpkgs/n/nat_traversal/master";
  inputs."nat_traversal-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nat_traversal-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}