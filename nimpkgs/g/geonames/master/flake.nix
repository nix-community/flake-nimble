{
  description = ''GeoNames API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-geonames-master.flake = false;
  inputs.src-geonames-master.type = "github";
  inputs.src-geonames-master.owner = "achesak";
  inputs.src-geonames-master.repo = "nim-geonames";
  inputs.src-geonames-master.ref = "refs/heads/master";
  inputs.src-geonames-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-geonames-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geonames-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-geonames-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}