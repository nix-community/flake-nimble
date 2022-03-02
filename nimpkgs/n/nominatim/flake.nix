{
  description = ''OpenStreetMap Nominatim API Lib for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nominatim-master".type = "github";
  inputs."nominatim-master".owner = "riinr";
  inputs."nominatim-master".repo = "flake-nimble";
  inputs."nominatim-master".ref = "flake-pinning";
  inputs."nominatim-master".dir = "nimpkgs/n/nominatim/master";
  inputs."nominatim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nominatim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nominatim-0_1_5".type = "github";
  inputs."nominatim-0_1_5".owner = "riinr";
  inputs."nominatim-0_1_5".repo = "flake-nimble";
  inputs."nominatim-0_1_5".ref = "flake-pinning";
  inputs."nominatim-0_1_5".dir = "nimpkgs/n/nominatim/0_1_5";
  inputs."nominatim-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nominatim-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}