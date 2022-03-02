{
  description = ''json de/serializer for tuples and more'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jser-master".type = "github";
  inputs."jser-master".owner = "riinr";
  inputs."jser-master".repo = "flake-nimble";
  inputs."jser-master".ref = "flake-pinning";
  inputs."jser-master".dir = "nimpkgs/j/jser/master";
  inputs."jser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jser-0_1_0".type = "github";
  inputs."jser-0_1_0".owner = "riinr";
  inputs."jser-0_1_0".repo = "flake-nimble";
  inputs."jser-0_1_0".ref = "flake-pinning";
  inputs."jser-0_1_0".dir = "nimpkgs/j/jser/0_1_0";
  inputs."jser-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jser-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jser-0_1_1".type = "github";
  inputs."jser-0_1_1".owner = "riinr";
  inputs."jser-0_1_1".repo = "flake-nimble";
  inputs."jser-0_1_1".ref = "flake-pinning";
  inputs."jser-0_1_1".dir = "nimpkgs/j/jser/0_1_1";
  inputs."jser-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jser-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jser-0_2_0".type = "github";
  inputs."jser-0_2_0".owner = "riinr";
  inputs."jser-0_2_0".repo = "flake-nimble";
  inputs."jser-0_2_0".ref = "flake-pinning";
  inputs."jser-0_2_0".dir = "nimpkgs/j/jser/0_2_0";
  inputs."jser-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jser-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."jser-0_2_1".type = "github";
  inputs."jser-0_2_1".owner = "riinr";
  inputs."jser-0_2_1".repo = "flake-nimble";
  inputs."jser-0_2_1".ref = "flake-pinning";
  inputs."jser-0_2_1".dir = "nimpkgs/j/jser/0_2_1";
  inputs."jser-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jser-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}