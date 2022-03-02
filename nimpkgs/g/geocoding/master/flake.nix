{
  description = ''A simple library for Google Maps Geocoding API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-geocoding-master.flake = false;
  inputs.src-geocoding-master.type = "github";
  inputs.src-geocoding-master.owner = "saratchandra92";
  inputs.src-geocoding-master.repo = "nim-geocoding";
  inputs.src-geocoding-master.ref = "refs/heads/master";
  inputs.src-geocoding-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-geocoding-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geocoding-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-geocoding-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}