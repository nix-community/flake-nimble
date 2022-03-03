{
  description = ''GeoNames API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."geonames-master".type = "github";
  inputs."geonames-master".owner = "riinr";
  inputs."geonames-master".repo = "flake-nimble";
  inputs."geonames-master".ref = "flake-pinning";
  inputs."geonames-master".dir = "nimpkgs/g/geonames/master";
  inputs."geonames-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geonames-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}