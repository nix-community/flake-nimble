{
  description = ''Declarative packets system for serializing/deserializing and marshalling'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."packets-master".type = "github";
  inputs."packets-master".owner = "riinr";
  inputs."packets-master".repo = "flake-nimble";
  inputs."packets-master".ref = "flake-pinning";
  inputs."packets-master".dir = "nimpkgs/p/packets/master";
  inputs."packets-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packets-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}