{
  description = ''Bindings for Chipmunk, a fast and lightweight 2D game physics library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."chipmunk7-master".type = "github";
  inputs."chipmunk7-master".owner = "riinr";
  inputs."chipmunk7-master".repo = "flake-nimble";
  inputs."chipmunk7-master".ref = "flake-pinning";
  inputs."chipmunk7-master".dir = "nimpkgs/c/chipmunk7/master";
  inputs."chipmunk7-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chipmunk7-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."chipmunk7-v0_3_0".type = "github";
  inputs."chipmunk7-v0_3_0".owner = "riinr";
  inputs."chipmunk7-v0_3_0".repo = "flake-nimble";
  inputs."chipmunk7-v0_3_0".ref = "flake-pinning";
  inputs."chipmunk7-v0_3_0".dir = "nimpkgs/c/chipmunk7/v0_3_0";
  inputs."chipmunk7-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chipmunk7-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}