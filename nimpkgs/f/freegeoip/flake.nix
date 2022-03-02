{
  description = ''Retrieve info about a location from an IP address'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."freegeoip-master".type = "github";
  inputs."freegeoip-master".owner = "riinr";
  inputs."freegeoip-master".repo = "flake-nimble";
  inputs."freegeoip-master".ref = "flake-pinning";
  inputs."freegeoip-master".dir = "nimpkgs/f/freegeoip/master";
  inputs."freegeoip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."freegeoip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}