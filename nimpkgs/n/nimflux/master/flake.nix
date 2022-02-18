{
  description = ''InfluxDB API client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimflux-master.flake = false;
  inputs.src-nimflux-master.type = "github";
  inputs.src-nimflux-master.owner = "tdely";
  inputs.src-nimflux-master.repo = "nimflux";
  inputs.src-nimflux-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimflux-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimflux-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimflux-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}