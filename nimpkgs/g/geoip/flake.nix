{
  description = ''Retrieve info about a location from an IP address'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."geoip-master".type = "github";
  inputs."geoip-master".owner = "riinr";
  inputs."geoip-master".repo = "flake-nimble";
  inputs."geoip-master".ref = "flake-pinning";
  inputs."geoip-master".dir = "nimpkgs/g/geoip/master";
  inputs."geoip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geoip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}