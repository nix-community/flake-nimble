{
  description = ''MaxMind GeoIP library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-mmgeoip-master.flake = false;
  inputs.src-mmgeoip-master.type = "github";
  inputs.src-mmgeoip-master.owner = "FedericoCeratto";
  inputs.src-mmgeoip-master.repo = "nim-mmgeoip";
  inputs.src-mmgeoip-master.ref = "refs/heads/master";
  inputs.src-mmgeoip-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mmgeoip-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mmgeoip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mmgeoip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}