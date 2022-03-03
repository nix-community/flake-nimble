{
  description = ''SDL 1.2 wrapper for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sdl1-master".type = "github";
  inputs."sdl1-master".owner = "riinr";
  inputs."sdl1-master".repo = "flake-nimble";
  inputs."sdl1-master".ref = "flake-pinning";
  inputs."sdl1-master".dir = "nimpkgs/s/sdl1/master";
  inputs."sdl1-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl1-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}