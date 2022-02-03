{
  description = ''GeoNames API wrapper'';
  inputs.src-geonames-master.flake = false;
  inputs.src-geonames-master.type = "github";
  inputs.src-geonames-master.owner = "achesak";
  inputs.src-geonames-master.repo = "nim-geonames";
  inputs.src-geonames-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-geonames-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geonames-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-geonames-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}