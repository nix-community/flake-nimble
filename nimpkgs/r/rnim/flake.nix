{
  description = ''A bridge between R and Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rnim-master".type = "github";
  inputs."rnim-master".owner = "riinr";
  inputs."rnim-master".repo = "flake-nimble";
  inputs."rnim-master".ref = "flake-pinning";
  inputs."rnim-master".dir = "nimpkgs/r/rnim/master";
  inputs."rnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rnim-v0_1_1".type = "github";
  inputs."rnim-v0_1_1".owner = "riinr";
  inputs."rnim-v0_1_1".repo = "flake-nimble";
  inputs."rnim-v0_1_1".ref = "flake-pinning";
  inputs."rnim-v0_1_1".dir = "nimpkgs/r/rnim/v0_1_1";
  inputs."rnim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rnim-v0_1_2".type = "github";
  inputs."rnim-v0_1_2".owner = "riinr";
  inputs."rnim-v0_1_2".repo = "flake-nimble";
  inputs."rnim-v0_1_2".ref = "flake-pinning";
  inputs."rnim-v0_1_2".dir = "nimpkgs/r/rnim/v0_1_2";
  inputs."rnim-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rnim-v0_1_3".type = "github";
  inputs."rnim-v0_1_3".owner = "riinr";
  inputs."rnim-v0_1_3".repo = "flake-nimble";
  inputs."rnim-v0_1_3".ref = "flake-pinning";
  inputs."rnim-v0_1_3".dir = "nimpkgs/r/rnim/v0_1_3";
  inputs."rnim-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rnim-v0_1_4".type = "github";
  inputs."rnim-v0_1_4".owner = "riinr";
  inputs."rnim-v0_1_4".repo = "flake-nimble";
  inputs."rnim-v0_1_4".ref = "flake-pinning";
  inputs."rnim-v0_1_4".dir = "nimpkgs/r/rnim/v0_1_4";
  inputs."rnim-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."rnim-v0_1_5".type = "github";
  inputs."rnim-v0_1_5".owner = "riinr";
  inputs."rnim-v0_1_5".repo = "flake-nimble";
  inputs."rnim-v0_1_5".ref = "flake-pinning";
  inputs."rnim-v0_1_5".dir = "nimpkgs/r/rnim/v0_1_5";
  inputs."rnim-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}