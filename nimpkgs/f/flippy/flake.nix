{
  description = ''Flippy is a simple 2d image and drawing library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."flippy-master".type = "github";
  inputs."flippy-master".owner = "riinr";
  inputs."flippy-master".repo = "flake-nimble";
  inputs."flippy-master".ref = "flake-pinning";
  inputs."flippy-master".dir = "nimpkgs/f/flippy/master";
  inputs."flippy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flippy-0_4_0".type = "github";
  inputs."flippy-0_4_0".owner = "riinr";
  inputs."flippy-0_4_0".repo = "flake-nimble";
  inputs."flippy-0_4_0".ref = "flake-pinning";
  inputs."flippy-0_4_0".dir = "nimpkgs/f/flippy/0_4_0";
  inputs."flippy-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flippy-0_4_1".type = "github";
  inputs."flippy-0_4_1".owner = "riinr";
  inputs."flippy-0_4_1".repo = "flake-nimble";
  inputs."flippy-0_4_1".ref = "flake-pinning";
  inputs."flippy-0_4_1".dir = "nimpkgs/f/flippy/0_4_1";
  inputs."flippy-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flippy-0_4_2".type = "github";
  inputs."flippy-0_4_2".owner = "riinr";
  inputs."flippy-0_4_2".repo = "flake-nimble";
  inputs."flippy-0_4_2".ref = "flake-pinning";
  inputs."flippy-0_4_2".dir = "nimpkgs/f/flippy/0_4_2";
  inputs."flippy-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flippy-0_4_3".type = "github";
  inputs."flippy-0_4_3".owner = "riinr";
  inputs."flippy-0_4_3".repo = "flake-nimble";
  inputs."flippy-0_4_3".ref = "flake-pinning";
  inputs."flippy-0_4_3".dir = "nimpkgs/f/flippy/0_4_3";
  inputs."flippy-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flippy-0_4_4".type = "github";
  inputs."flippy-0_4_4".owner = "riinr";
  inputs."flippy-0_4_4".repo = "flake-nimble";
  inputs."flippy-0_4_4".ref = "flake-pinning";
  inputs."flippy-0_4_4".dir = "nimpkgs/f/flippy/0_4_4";
  inputs."flippy-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flippy-0_4_5".type = "github";
  inputs."flippy-0_4_5".owner = "riinr";
  inputs."flippy-0_4_5".repo = "flake-nimble";
  inputs."flippy-0_4_5".ref = "flake-pinning";
  inputs."flippy-0_4_5".dir = "nimpkgs/f/flippy/0_4_5";
  inputs."flippy-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flippy-0_4_6".type = "github";
  inputs."flippy-0_4_6".owner = "riinr";
  inputs."flippy-0_4_6".repo = "flake-nimble";
  inputs."flippy-0_4_6".ref = "flake-pinning";
  inputs."flippy-0_4_6".dir = "nimpkgs/f/flippy/0_4_6";
  inputs."flippy-0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flippy-0_4_7".type = "github";
  inputs."flippy-0_4_7".owner = "riinr";
  inputs."flippy-0_4_7".repo = "flake-nimble";
  inputs."flippy-0_4_7".ref = "flake-pinning";
  inputs."flippy-0_4_7".dir = "nimpkgs/f/flippy/0_4_7";
  inputs."flippy-0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."flippy-v0_4_1".type = "github";
  inputs."flippy-v0_4_1".owner = "riinr";
  inputs."flippy-v0_4_1".repo = "flake-nimble";
  inputs."flippy-v0_4_1".ref = "flake-pinning";
  inputs."flippy-v0_4_1".dir = "nimpkgs/f/flippy/v0_4_1";
  inputs."flippy-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}