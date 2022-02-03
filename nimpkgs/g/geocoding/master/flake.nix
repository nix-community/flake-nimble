{
  description = ''A simple library for Google Maps Geocoding API'';
  inputs.src-geocoding-master.flake = false;
  inputs.src-geocoding-master.type = "github";
  inputs.src-geocoding-master.owner = "saratchandra92";
  inputs.src-geocoding-master.repo = "nim-geocoding";
  inputs.src-geocoding-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-geocoding-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geocoding-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-geocoding-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}