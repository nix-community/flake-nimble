{
  description = ''Macro for building OOP class hierarchies based on closure methods.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."oop_utils-master".type = "github";
  inputs."oop_utils-master".owner = "riinr";
  inputs."oop_utils-master".repo = "flake-nimble";
  inputs."oop_utils-master".ref = "flake-pinning";
  inputs."oop_utils-master".dir = "nimpkgs/o/oop_utils/master";
  inputs."oop_utils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oop_utils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}