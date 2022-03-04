{
  description = ''Nim metrics client library supporting the Prometheus monitoring toolkit'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-metrics-master.flake = false;
  inputs.src-metrics-master.type = "github";
  inputs.src-metrics-master.owner = "status-im";
  inputs.src-metrics-master.repo = "nim-metrics";
  inputs.src-metrics-master.ref = "refs/heads/master";
  inputs.src-metrics-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-metrics-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-metrics-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-metrics-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}