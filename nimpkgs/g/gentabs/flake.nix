{
  description = ''Efficient hash table that is a key-value mapping (removed from stdlib)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gentabs-master".type = "github";
  inputs."gentabs-master".owner = "riinr";
  inputs."gentabs-master".repo = "flake-nimble";
  inputs."gentabs-master".ref = "flake-pinning";
  inputs."gentabs-master".dir = "nimpkgs/g/gentabs/master";
  inputs."gentabs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gentabs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}