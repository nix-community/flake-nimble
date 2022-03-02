{
  description = ''Wrapper for Allegro version 5.X'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."allegro5-master".type = "github";
  inputs."allegro5-master".owner = "riinr";
  inputs."allegro5-master".repo = "flake-nimble";
  inputs."allegro5-master".ref = "flake-pinning";
  inputs."allegro5-master".dir = "nimpkgs/a/allegro5/master";
  inputs."allegro5-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allegro5-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."allegro5-v1_0".type = "github";
  inputs."allegro5-v1_0".owner = "riinr";
  inputs."allegro5-v1_0".repo = "flake-nimble";
  inputs."allegro5-v1_0".ref = "flake-pinning";
  inputs."allegro5-v1_0".dir = "nimpkgs/a/allegro5/v1_0";
  inputs."allegro5-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allegro5-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}