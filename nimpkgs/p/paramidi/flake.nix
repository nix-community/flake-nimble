{
  description = ''A library for making MIDI music'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."paramidi-master".type = "github";
  inputs."paramidi-master".owner = "riinr";
  inputs."paramidi-master".repo = "flake-nimble";
  inputs."paramidi-master".ref = "flake-pinning";
  inputs."paramidi-master".dir = "nimpkgs/p/paramidi/master";
  inputs."paramidi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."paramidi-0_1_0".type = "github";
  inputs."paramidi-0_1_0".owner = "riinr";
  inputs."paramidi-0_1_0".repo = "flake-nimble";
  inputs."paramidi-0_1_0".ref = "flake-pinning";
  inputs."paramidi-0_1_0".dir = "nimpkgs/p/paramidi/0_1_0";
  inputs."paramidi-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."paramidi-0_2_0".type = "github";
  inputs."paramidi-0_2_0".owner = "riinr";
  inputs."paramidi-0_2_0".repo = "flake-nimble";
  inputs."paramidi-0_2_0".ref = "flake-pinning";
  inputs."paramidi-0_2_0".dir = "nimpkgs/p/paramidi/0_2_0";
  inputs."paramidi-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."paramidi-0_3_0".type = "github";
  inputs."paramidi-0_3_0".owner = "riinr";
  inputs."paramidi-0_3_0".repo = "flake-nimble";
  inputs."paramidi-0_3_0".ref = "flake-pinning";
  inputs."paramidi-0_3_0".dir = "nimpkgs/p/paramidi/0_3_0";
  inputs."paramidi-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."paramidi-0_4_0".type = "github";
  inputs."paramidi-0_4_0".owner = "riinr";
  inputs."paramidi-0_4_0".repo = "flake-nimble";
  inputs."paramidi-0_4_0".ref = "flake-pinning";
  inputs."paramidi-0_4_0".dir = "nimpkgs/p/paramidi/0_4_0";
  inputs."paramidi-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."paramidi-0_5_0".type = "github";
  inputs."paramidi-0_5_0".owner = "riinr";
  inputs."paramidi-0_5_0".repo = "flake-nimble";
  inputs."paramidi-0_5_0".ref = "flake-pinning";
  inputs."paramidi-0_5_0".dir = "nimpkgs/p/paramidi/0_5_0";
  inputs."paramidi-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."paramidi-0_6_0".type = "github";
  inputs."paramidi-0_6_0".owner = "riinr";
  inputs."paramidi-0_6_0".repo = "flake-nimble";
  inputs."paramidi-0_6_0".ref = "flake-pinning";
  inputs."paramidi-0_6_0".dir = "nimpkgs/p/paramidi/0_6_0";
  inputs."paramidi-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}