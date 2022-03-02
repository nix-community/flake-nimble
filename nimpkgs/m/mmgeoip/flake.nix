{
  description = ''MaxMind GeoIP library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mmgeoip-master".type = "github";
  inputs."mmgeoip-master".owner = "riinr";
  inputs."mmgeoip-master".repo = "flake-nimble";
  inputs."mmgeoip-master".ref = "flake-pinning";
  inputs."mmgeoip-master".dir = "nimpkgs/m/mmgeoip/master";
  inputs."mmgeoip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mmgeoip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}