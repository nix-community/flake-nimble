{
  description = ''Library for exposing metrics to Prometheus'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."prometheus-master".type = "github";
  inputs."prometheus-master".owner = "riinr";
  inputs."prometheus-master".repo = "flake-nimble";
  inputs."prometheus-master".ref = "flake-pinning";
  inputs."prometheus-master".dir = "nimpkgs/p/prometheus/master";
  inputs."prometheus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prometheus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}