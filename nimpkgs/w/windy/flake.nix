{
  description = ''Windowing library for Nim using OS native APIs.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."windy-master".type = "github";
  inputs."windy-master".owner = "riinr";
  inputs."windy-master".repo = "flake-nimble";
  inputs."windy-master".ref = "flake-pinning";
  inputs."windy-master".dir = "nimpkgs/w/windy/master";
  inputs."windy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."windy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}