{
  description = ''InfluxDB API client library'';
  inputs.src-nimflux-master.flake = false;
  inputs.src-nimflux-master.type = "github";
  inputs.src-nimflux-master.owner = "tdely";
  inputs.src-nimflux-master.repo = "nimflux";
  inputs.src-nimflux-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimflux-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimflux-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimflux-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}