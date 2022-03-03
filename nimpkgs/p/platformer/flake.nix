{
  description = ''Writing a 2D Platform Game in Nim with SDL2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."platformer-master".type = "github";
  inputs."platformer-master".owner = "riinr";
  inputs."platformer-master".repo = "flake-nimble";
  inputs."platformer-master".ref = "flake-pinning";
  inputs."platformer-master".dir = "nimpkgs/p/platformer/master";
  inputs."platformer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."platformer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}