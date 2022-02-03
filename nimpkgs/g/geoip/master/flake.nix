{
  description = ''Retrieve info about a location from an IP address'';
  inputs.src-geoip-master.flake = false;
  inputs.src-geoip-master.type = "github";
  inputs.src-geoip-master.owner = "achesak";
  inputs.src-geoip-master.repo = "nim-geoip";
  inputs.src-geoip-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-geoip-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geoip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-geoip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}