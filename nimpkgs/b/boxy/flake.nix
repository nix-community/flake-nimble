{
  description = ''2D GPU rendering with a tiling atlas.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."boxy-master".type = "github";
  inputs."boxy-master".owner = "riinr";
  inputs."boxy-master".repo = "flake-nimble";
  inputs."boxy-master".ref = "flake-pinning";
  inputs."boxy-master".dir = "nimpkgs/b/boxy/master";
  inputs."boxy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."boxy-0_1_0".type = "github";
  inputs."boxy-0_1_0".owner = "riinr";
  inputs."boxy-0_1_0".repo = "flake-nimble";
  inputs."boxy-0_1_0".ref = "flake-pinning";
  inputs."boxy-0_1_0".dir = "nimpkgs/b/boxy/0_1_0";
  inputs."boxy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."boxy-0_1_1".type = "github";
  inputs."boxy-0_1_1".owner = "riinr";
  inputs."boxy-0_1_1".repo = "flake-nimble";
  inputs."boxy-0_1_1".ref = "flake-pinning";
  inputs."boxy-0_1_1".dir = "nimpkgs/b/boxy/0_1_1";
  inputs."boxy-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."boxy-0_2_0".type = "github";
  inputs."boxy-0_2_0".owner = "riinr";
  inputs."boxy-0_2_0".repo = "flake-nimble";
  inputs."boxy-0_2_0".ref = "flake-pinning";
  inputs."boxy-0_2_0".dir = "nimpkgs/b/boxy/0_2_0";
  inputs."boxy-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."boxy-0_3_0".type = "github";
  inputs."boxy-0_3_0".owner = "riinr";
  inputs."boxy-0_3_0".repo = "flake-nimble";
  inputs."boxy-0_3_0".ref = "flake-pinning";
  inputs."boxy-0_3_0".dir = "nimpkgs/b/boxy/0_3_0";
  inputs."boxy-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."boxy-0_3_1".type = "github";
  inputs."boxy-0_3_1".owner = "riinr";
  inputs."boxy-0_3_1".repo = "flake-nimble";
  inputs."boxy-0_3_1".ref = "flake-pinning";
  inputs."boxy-0_3_1".dir = "nimpkgs/b/boxy/0_3_1";
  inputs."boxy-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."boxy-0_3_2".type = "github";
  inputs."boxy-0_3_2".owner = "riinr";
  inputs."boxy-0_3_2".repo = "flake-nimble";
  inputs."boxy-0_3_2".ref = "flake-pinning";
  inputs."boxy-0_3_2".dir = "nimpkgs/b/boxy/0_3_2";
  inputs."boxy-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."boxy-0_3_3".type = "github";
  inputs."boxy-0_3_3".owner = "riinr";
  inputs."boxy-0_3_3".repo = "flake-nimble";
  inputs."boxy-0_3_3".ref = "flake-pinning";
  inputs."boxy-0_3_3".dir = "nimpkgs/b/boxy/0_3_3";
  inputs."boxy-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."boxy-0_3_4".type = "github";
  inputs."boxy-0_3_4".owner = "riinr";
  inputs."boxy-0_3_4".repo = "flake-nimble";
  inputs."boxy-0_3_4".ref = "flake-pinning";
  inputs."boxy-0_3_4".dir = "nimpkgs/b/boxy/0_3_4";
  inputs."boxy-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}