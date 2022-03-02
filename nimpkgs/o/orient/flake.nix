{
  description = ''OrientDB driver written in pure Nim, uses the OrientDB 2.0 Binary Protocol with Binary Serialization.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."orient-master".type = "github";
  inputs."orient-master".owner = "riinr";
  inputs."orient-master".repo = "flake-nimble";
  inputs."orient-master".ref = "flake-pinning";
  inputs."orient-master".dir = "nimpkgs/o/orient/master";
  inputs."orient-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."orient-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}