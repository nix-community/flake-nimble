{
  description = ''Graphics module for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."graphics-master".type = "github";
  inputs."graphics-master".owner = "riinr";
  inputs."graphics-master".repo = "flake-nimble";
  inputs."graphics-master".ref = "flake-pinning";
  inputs."graphics-master".dir = "nimpkgs/g/graphics/master";
  inputs."graphics-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphics-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}