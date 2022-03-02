{
  description = ''The Nim wrapper for tracemoe.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."anime-master".type = "github";
  inputs."anime-master".owner = "riinr";
  inputs."anime-master".repo = "flake-nimble";
  inputs."anime-master".ref = "flake-pinning";
  inputs."anime-master".dir = "nimpkgs/a/anime/master";
  inputs."anime-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anime-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}