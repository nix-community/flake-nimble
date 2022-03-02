{
  description = ''Nim metrics client library supporting the Prometheus monitoring toolkit'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."metrics-master".type = "github";
  inputs."metrics-master".owner = "riinr";
  inputs."metrics-master".repo = "flake-nimble";
  inputs."metrics-master".ref = "flake-pinning";
  inputs."metrics-master".dir = "nimpkgs/m/metrics/master";
  inputs."metrics-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metrics-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}