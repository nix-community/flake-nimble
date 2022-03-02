{
  description = ''A modern and extensible serialization framework for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."serialization-master".type = "github";
  inputs."serialization-master".owner = "riinr";
  inputs."serialization-master".repo = "flake-nimble";
  inputs."serialization-master".ref = "flake-pinning";
  inputs."serialization-master".dir = "nimpkgs/s/serialization/master";
  inputs."serialization-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serialization-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}