{
  description = ''MaxMind GeoIP library'';
  inputs.src-mmgeoip-master.flake = false;
  inputs.src-mmgeoip-master.type = "github";
  inputs.src-mmgeoip-master.owner = "FedericoCeratto";
  inputs.src-mmgeoip-master.repo = "nim-mmgeoip";
  inputs.src-mmgeoip-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mmgeoip-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mmgeoip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mmgeoip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}