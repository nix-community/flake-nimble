{
  description = ''Steam API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."steam-master".type = "github";
  inputs."steam-master".owner = "riinr";
  inputs."steam-master".repo = "flake-nimble";
  inputs."steam-master".ref = "flake-pinning";
  inputs."steam-master".dir = "nimpkgs/s/steam/master";
  inputs."steam-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."steam-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}