{
  description = ''OpenStreetMap API Lib for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."openstreetmap-master".type = "github";
  inputs."openstreetmap-master".owner = "riinr";
  inputs."openstreetmap-master".repo = "flake-nimble";
  inputs."openstreetmap-master".ref = "flake-pinning";
  inputs."openstreetmap-master".dir = "nimpkgs/o/openstreetmap/master";
  inputs."openstreetmap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openstreetmap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."openstreetmap-0_2_0".type = "github";
  inputs."openstreetmap-0_2_0".owner = "riinr";
  inputs."openstreetmap-0_2_0".repo = "flake-nimble";
  inputs."openstreetmap-0_2_0".ref = "flake-pinning";
  inputs."openstreetmap-0_2_0".dir = "nimpkgs/o/openstreetmap/0_2_0";
  inputs."openstreetmap-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openstreetmap-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}