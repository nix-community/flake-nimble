{
  description = ''Nim module for parsing GPX (GPS Exchange format) files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."gpx-master".type = "github";
  inputs."gpx-master".owner = "riinr";
  inputs."gpx-master".repo = "flake-nimble";
  inputs."gpx-master".ref = "flake-pinning";
  inputs."gpx-master".dir = "nimpkgs/g/gpx/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}