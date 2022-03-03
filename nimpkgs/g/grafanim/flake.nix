{
  description = ''Grafana module for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."grafanim-master".type = "github";
  inputs."grafanim-master".owner = "riinr";
  inputs."grafanim-master".repo = "flake-nimble";
  inputs."grafanim-master".ref = "flake-pinning";
  inputs."grafanim-master".dir = "nimpkgs/g/grafanim/master";
  inputs."grafanim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grafanim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}