{
  description = ''Open Source Routing Machine for OpenStreetMap API Lib and App'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."osrm-master".type = "github";
  inputs."osrm-master".owner = "riinr";
  inputs."osrm-master".repo = "flake-nimble";
  inputs."osrm-master".ref = "flake-pinning";
  inputs."osrm-master".dir = "nimpkgs/o/osrm/master";
  inputs."osrm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osrm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."osrm-0_1_5".type = "github";
  inputs."osrm-0_1_5".owner = "riinr";
  inputs."osrm-0_1_5".repo = "flake-nimble";
  inputs."osrm-0_1_5".ref = "flake-pinning";
  inputs."osrm-0_1_5".dir = "nimpkgs/o/osrm/0_1_5";
  inputs."osrm-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osrm-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}