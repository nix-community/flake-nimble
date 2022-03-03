{
  description = ''Generate and parse Mac OS X .plist files in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."plists-master".type = "github";
  inputs."plists-master".owner = "riinr";
  inputs."plists-master".repo = "flake-nimble";
  inputs."plists-master".ref = "flake-pinning";
  inputs."plists-master".dir = "nimpkgs/p/plists/master";
  inputs."plists-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plists-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}