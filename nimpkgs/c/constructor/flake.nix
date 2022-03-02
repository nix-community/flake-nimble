{
  description = ''Nim macros to aid in object construction including event programming, and constructors.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."constructor-master".type = "github";
  inputs."constructor-master".owner = "riinr";
  inputs."constructor-master".repo = "flake-nimble";
  inputs."constructor-master".ref = "flake-pinning";
  inputs."constructor-master".dir = "nimpkgs/c/constructor/master";
  inputs."constructor-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."constructor-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}