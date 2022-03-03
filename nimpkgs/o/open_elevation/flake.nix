{
  description = ''OpenStreetMap Elevation API MultiSync Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."open_elevation-master".type = "github";
  inputs."open_elevation-master".owner = "riinr";
  inputs."open_elevation-master".repo = "flake-nimble";
  inputs."open_elevation-master".ref = "flake-pinning";
  inputs."open_elevation-master".dir = "nimpkgs/o/open_elevation/master";
  inputs."open_elevation-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."open_elevation-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."open_elevation-0_1_5".type = "github";
  inputs."open_elevation-0_1_5".owner = "riinr";
  inputs."open_elevation-0_1_5".repo = "flake-nimble";
  inputs."open_elevation-0_1_5".ref = "flake-pinning";
  inputs."open_elevation-0_1_5".dir = "nimpkgs/o/open_elevation/0_1_5";
  inputs."open_elevation-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."open_elevation-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}