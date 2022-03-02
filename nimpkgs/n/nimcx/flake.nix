{
  description = ''Color and utilities library for linux terminal.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimcx-master".type = "github";
  inputs."nimcx-master".owner = "riinr";
  inputs."nimcx-master".repo = "flake-nimble";
  inputs."nimcx-master".ref = "flake-pinning";
  inputs."nimcx-master".dir = "nimpkgs/n/nimcx/master";
  inputs."nimcx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}