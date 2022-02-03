{
  description = ''Nim implementation of the geohash latitude/longitude geocode system'';
  inputs.src-geohash-master.flake = false;
  inputs.src-geohash-master.type = "github";
  inputs.src-geohash-master.owner = "twist-vector";
  inputs.src-geohash-master.repo = "nim-geohash";
  inputs.src-geohash-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-geohash-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geohash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-geohash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}