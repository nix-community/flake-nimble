{
  description = ''A simple, stateless StatsD client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-statsd_client-master.flake = false;
  inputs.src-statsd_client-master.type = "github";
  inputs.src-statsd_client-master.owner = "FedericoCeratto";
  inputs.src-statsd_client-master.repo = "nim-statsd-client";
  inputs.src-statsd_client-master.ref = "refs/heads/master";
  inputs.src-statsd_client-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-statsd_client-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-statsd_client-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-statsd_client-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}