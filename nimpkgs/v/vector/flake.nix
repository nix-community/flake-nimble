{
  description = ''Simple reallocating vector'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."vector-master".type = "github";
  inputs."vector-master".owner = "riinr";
  inputs."vector-master".repo = "flake-nimble";
  inputs."vector-master".ref = "flake-pinning";
  inputs."vector-master".dir = "nimpkgs/v/vector/master";
  inputs."vector-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vector-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."vector-v0_1_0".type = "github";
  inputs."vector-v0_1_0".owner = "riinr";
  inputs."vector-v0_1_0".repo = "flake-nimble";
  inputs."vector-v0_1_0".ref = "flake-pinning";
  inputs."vector-v0_1_0".dir = "nimpkgs/v/vector/v0_1_0";
  inputs."vector-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vector-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."vector-v0_1_1".type = "github";
  inputs."vector-v0_1_1".owner = "riinr";
  inputs."vector-v0_1_1".repo = "flake-nimble";
  inputs."vector-v0_1_1".ref = "flake-pinning";
  inputs."vector-v0_1_1".dir = "nimpkgs/v/vector/v0_1_1";
  inputs."vector-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vector-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}