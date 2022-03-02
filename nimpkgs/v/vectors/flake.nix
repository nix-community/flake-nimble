{
  description = ''Simple multidimensional vector math'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."vectors-master".type = "github";
  inputs."vectors-master".owner = "riinr";
  inputs."vectors-master".repo = "flake-nimble";
  inputs."vectors-master".ref = "flake-pinning";
  inputs."vectors-master".dir = "nimpkgs/v/vectors/master";
  inputs."vectors-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vectors-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}