{
  description = ''NOAA weather API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."noaa-master".type = "github";
  inputs."noaa-master".owner = "riinr";
  inputs."noaa-master".repo = "flake-nimble";
  inputs."noaa-master".ref = "flake-pinning";
  inputs."noaa-master".dir = "nimpkgs/n/noaa/master";
  inputs."noaa-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noaa-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}