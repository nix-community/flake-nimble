{
  description = ''Serializer and tools for flat binary files.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."flatty-master".type = "github";
  inputs."flatty-master".owner = "riinr";
  inputs."flatty-master".repo = "flake-nimble";
  inputs."flatty-master".ref = "flake-pinning";
  inputs."flatty-master".dir = "nimpkgs/f/flatty/master";
  inputs."flatty-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flatty-0_1_0".type = "github";
  inputs."flatty-0_1_0".owner = "riinr";
  inputs."flatty-0_1_0".repo = "flake-nimble";
  inputs."flatty-0_1_0".ref = "flake-pinning";
  inputs."flatty-0_1_0".dir = "nimpkgs/f/flatty/0_1_0";
  inputs."flatty-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flatty-0_1_1".type = "github";
  inputs."flatty-0_1_1".owner = "riinr";
  inputs."flatty-0_1_1".repo = "flake-nimble";
  inputs."flatty-0_1_1".ref = "flake-pinning";
  inputs."flatty-0_1_1".dir = "nimpkgs/f/flatty/0_1_1";
  inputs."flatty-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flatty-0_1_2".type = "github";
  inputs."flatty-0_1_2".owner = "riinr";
  inputs."flatty-0_1_2".repo = "flake-nimble";
  inputs."flatty-0_1_2".ref = "flake-pinning";
  inputs."flatty-0_1_2".dir = "nimpkgs/f/flatty/0_1_2";
  inputs."flatty-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flatty-0_1_3".type = "github";
  inputs."flatty-0_1_3".owner = "riinr";
  inputs."flatty-0_1_3".repo = "flake-nimble";
  inputs."flatty-0_1_3".ref = "flake-pinning";
  inputs."flatty-0_1_3".dir = "nimpkgs/f/flatty/0_1_3";
  inputs."flatty-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flatty-0_1_4".type = "github";
  inputs."flatty-0_1_4".owner = "riinr";
  inputs."flatty-0_1_4".repo = "flake-nimble";
  inputs."flatty-0_1_4".ref = "flake-pinning";
  inputs."flatty-0_1_4".dir = "nimpkgs/f/flatty/0_1_4";
  inputs."flatty-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flatty-0_1_5".type = "github";
  inputs."flatty-0_1_5".owner = "riinr";
  inputs."flatty-0_1_5".repo = "flake-nimble";
  inputs."flatty-0_1_5".ref = "flake-pinning";
  inputs."flatty-0_1_5".dir = "nimpkgs/f/flatty/0_1_5";
  inputs."flatty-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flatty-0_2_0".type = "github";
  inputs."flatty-0_2_0".owner = "riinr";
  inputs."flatty-0_2_0".repo = "flake-nimble";
  inputs."flatty-0_2_0".ref = "flake-pinning";
  inputs."flatty-0_2_0".dir = "nimpkgs/f/flatty/0_2_0";
  inputs."flatty-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flatty-0_2_1".type = "github";
  inputs."flatty-0_2_1".owner = "riinr";
  inputs."flatty-0_2_1".repo = "flake-nimble";
  inputs."flatty-0_2_1".ref = "flake-pinning";
  inputs."flatty-0_2_1".dir = "nimpkgs/f/flatty/0_2_1";
  inputs."flatty-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flatty-0_2_2".type = "github";
  inputs."flatty-0_2_2".owner = "riinr";
  inputs."flatty-0_2_2".repo = "flake-nimble";
  inputs."flatty-0_2_2".ref = "flake-pinning";
  inputs."flatty-0_2_2".dir = "nimpkgs/f/flatty/0_2_2";
  inputs."flatty-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flatty-0_2_3".type = "github";
  inputs."flatty-0_2_3".owner = "riinr";
  inputs."flatty-0_2_3".repo = "flake-nimble";
  inputs."flatty-0_2_3".ref = "flake-pinning";
  inputs."flatty-0_2_3".dir = "nimpkgs/f/flatty/0_2_3";
  inputs."flatty-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flatty-0_2_4".type = "github";
  inputs."flatty-0_2_4".owner = "riinr";
  inputs."flatty-0_2_4".repo = "flake-nimble";
  inputs."flatty-0_2_4".ref = "flake-pinning";
  inputs."flatty-0_2_4".dir = "nimpkgs/f/flatty/0_2_4";
  inputs."flatty-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}