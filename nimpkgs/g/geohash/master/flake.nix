{
  description = ''Nim implementation of the geohash latitude/longitude geocode system'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-geohash-master.flake = false;
  inputs.src-geohash-master.type = "github";
  inputs.src-geohash-master.owner = "twist-vector";
  inputs.src-geohash-master.repo = "nim-geohash";
  inputs.src-geohash-master.ref = "refs/heads/master";
  inputs.src-geohash-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-geohash-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geohash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-geohash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}