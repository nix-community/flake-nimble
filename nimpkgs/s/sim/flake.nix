{
  description = ''Parse config by defining an object'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sim-master".type = "github";
  inputs."sim-master".owner = "riinr";
  inputs."sim-master".repo = "flake-nimble";
  inputs."sim-master".ref = "flake-pinning";
  inputs."sim-master".dir = "nimpkgs/s/sim/master";
  inputs."sim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sim-0_1_1".type = "github";
  inputs."sim-0_1_1".owner = "riinr";
  inputs."sim-0_1_1".repo = "flake-nimble";
  inputs."sim-0_1_1".ref = "flake-pinning";
  inputs."sim-0_1_1".dir = "nimpkgs/s/sim/0_1_1";
  inputs."sim-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sim-0_1_2".type = "github";
  inputs."sim-0_1_2".owner = "riinr";
  inputs."sim-0_1_2".repo = "flake-nimble";
  inputs."sim-0_1_2".ref = "flake-pinning";
  inputs."sim-0_1_2".dir = "nimpkgs/s/sim/0_1_2";
  inputs."sim-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sim-0_1_3".type = "github";
  inputs."sim-0_1_3".owner = "riinr";
  inputs."sim-0_1_3".repo = "flake-nimble";
  inputs."sim-0_1_3".ref = "flake-pinning";
  inputs."sim-0_1_3".dir = "nimpkgs/s/sim/0_1_3";
  inputs."sim-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sim-0_1_4".type = "github";
  inputs."sim-0_1_4".owner = "riinr";
  inputs."sim-0_1_4".repo = "flake-nimble";
  inputs."sim-0_1_4".ref = "flake-pinning";
  inputs."sim-0_1_4".dir = "nimpkgs/s/sim/0_1_4";
  inputs."sim-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sim-0_1_5".type = "github";
  inputs."sim-0_1_5".owner = "riinr";
  inputs."sim-0_1_5".repo = "flake-nimble";
  inputs."sim-0_1_5".ref = "flake-pinning";
  inputs."sim-0_1_5".dir = "nimpkgs/s/sim/0_1_5";
  inputs."sim-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sim-0_1_6".type = "github";
  inputs."sim-0_1_6".owner = "riinr";
  inputs."sim-0_1_6".repo = "flake-nimble";
  inputs."sim-0_1_6".ref = "flake-pinning";
  inputs."sim-0_1_6".dir = "nimpkgs/s/sim/0_1_6";
  inputs."sim-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sim-0_1_7".type = "github";
  inputs."sim-0_1_7".owner = "riinr";
  inputs."sim-0_1_7".repo = "flake-nimble";
  inputs."sim-0_1_7".ref = "flake-pinning";
  inputs."sim-0_1_7".dir = "nimpkgs/s/sim/0_1_7";
  inputs."sim-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}