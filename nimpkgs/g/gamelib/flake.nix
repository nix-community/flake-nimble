{
  description = ''A library of functions to make creating games using Nim and SDL2 easier. This does not intend to be a full blown engine and tries to keep all the components loosely coupled so that individual parts can be used separately.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gamelib-master".type = "github";
  inputs."gamelib-master".owner = "riinr";
  inputs."gamelib-master".repo = "flake-nimble";
  inputs."gamelib-master".ref = "flake-pinning";
  inputs."gamelib-master".dir = "nimpkgs/g/gamelib/master";
  inputs."gamelib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gamelib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}