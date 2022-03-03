{
  description = ''Genetic Algorithm Library for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimga-master".type = "github";
  inputs."nimga-master".owner = "riinr";
  inputs."nimga-master".repo = "flake-nimble";
  inputs."nimga-master".ref = "flake-pinning";
  inputs."nimga-master".dir = "nimpkgs/n/nimga/master";
  inputs."nimga-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimga-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}