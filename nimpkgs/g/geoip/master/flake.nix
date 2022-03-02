{
  description = ''Retrieve info about a location from an IP address'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-geoip-master.flake = false;
  inputs.src-geoip-master.type = "github";
  inputs.src-geoip-master.owner = "achesak";
  inputs.src-geoip-master.repo = "nim-geoip";
  inputs.src-geoip-master.ref = "refs/heads/master";
  inputs.src-geoip-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-geoip-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geoip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-geoip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}