{
  description = ''Z3 binding for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."z3nim-master".type = "github";
  inputs."z3nim-master".owner = "riinr";
  inputs."z3nim-master".repo = "flake-nimble";
  inputs."z3nim-master".ref = "flake-pinning";
  inputs."z3nim-master".dir = "nimpkgs/z/z3nim/master";
  inputs."z3nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."z3nim-v0_1_0".type = "github";
  inputs."z3nim-v0_1_0".owner = "riinr";
  inputs."z3nim-v0_1_0".repo = "flake-nimble";
  inputs."z3nim-v0_1_0".ref = "flake-pinning";
  inputs."z3nim-v0_1_0".dir = "nimpkgs/z/z3nim/v0_1_0";
  inputs."z3nim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3nim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}