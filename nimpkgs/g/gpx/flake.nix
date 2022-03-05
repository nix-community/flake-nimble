{
  description = ''Nim module for parsing GPX (GPS Exchange format) files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gpx-master".type = "github";
  inputs."gpx-master".owner = "riinr";
  inputs."gpx-master".repo = "flake-nimble";
  inputs."gpx-master".ref = "flake-pinning";
  inputs."gpx-master".dir = "nimpkgs/g/gpx/master";
  inputs."gpx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gpx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}