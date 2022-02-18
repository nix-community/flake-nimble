{
  description = ''Nim implementation of the geohash latitude/longitude geocode system'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."geohash-master".type = "github";
  inputs."geohash-master".owner = "riinr";
  inputs."geohash-master".repo = "flake-nimble";
  inputs."geohash-master".ref = "flake-pinning";
  inputs."geohash-master".dir = "nimpkgs/g/geohash/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}