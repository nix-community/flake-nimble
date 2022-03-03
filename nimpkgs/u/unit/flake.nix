{
  description = ''A library that provides unit types in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."unit-master".type = "github";
  inputs."unit-master".owner = "riinr";
  inputs."unit-master".repo = "flake-nimble";
  inputs."unit-master".ref = "flake-pinning";
  inputs."unit-master".dir = "nimpkgs/u/unit/master";
  inputs."unit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}