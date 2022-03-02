{
  description = ''Bindings and a high-level interface for MongoDB'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mongo-master".type = "github";
  inputs."mongo-master".owner = "riinr";
  inputs."mongo-master".repo = "flake-nimble";
  inputs."mongo-master".ref = "flake-pinning";
  inputs."mongo-master".dir = "nimpkgs/m/mongo/master";
  inputs."mongo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mongo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}