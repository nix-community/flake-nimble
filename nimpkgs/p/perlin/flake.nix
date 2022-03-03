{
  description = ''Perlin noise and Simplex noise generation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."perlin-master".type = "github";
  inputs."perlin-master".owner = "riinr";
  inputs."perlin-master".repo = "flake-nimble";
  inputs."perlin-master".ref = "flake-pinning";
  inputs."perlin-master".dir = "nimpkgs/p/perlin/master";
  inputs."perlin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."perlin-0_1_0".type = "github";
  inputs."perlin-0_1_0".owner = "riinr";
  inputs."perlin-0_1_0".repo = "flake-nimble";
  inputs."perlin-0_1_0".ref = "flake-pinning";
  inputs."perlin-0_1_0".dir = "nimpkgs/p/perlin/0_1_0";
  inputs."perlin-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."perlin-0_2_0".type = "github";
  inputs."perlin-0_2_0".owner = "riinr";
  inputs."perlin-0_2_0".repo = "flake-nimble";
  inputs."perlin-0_2_0".ref = "flake-pinning";
  inputs."perlin-0_2_0".dir = "nimpkgs/p/perlin/0_2_0";
  inputs."perlin-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."perlin-0_3_0".type = "github";
  inputs."perlin-0_3_0".owner = "riinr";
  inputs."perlin-0_3_0".repo = "flake-nimble";
  inputs."perlin-0_3_0".ref = "flake-pinning";
  inputs."perlin-0_3_0".dir = "nimpkgs/p/perlin/0_3_0";
  inputs."perlin-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."perlin-0_4_0".type = "github";
  inputs."perlin-0_4_0".owner = "riinr";
  inputs."perlin-0_4_0".repo = "flake-nimble";
  inputs."perlin-0_4_0".ref = "flake-pinning";
  inputs."perlin-0_4_0".dir = "nimpkgs/p/perlin/0_4_0";
  inputs."perlin-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."perlin-0_5_0".type = "github";
  inputs."perlin-0_5_0".owner = "riinr";
  inputs."perlin-0_5_0".repo = "flake-nimble";
  inputs."perlin-0_5_0".ref = "flake-pinning";
  inputs."perlin-0_5_0".dir = "nimpkgs/p/perlin/0_5_0";
  inputs."perlin-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."perlin-0_6_0".type = "github";
  inputs."perlin-0_6_0".owner = "riinr";
  inputs."perlin-0_6_0".repo = "flake-nimble";
  inputs."perlin-0_6_0".ref = "flake-pinning";
  inputs."perlin-0_6_0".dir = "nimpkgs/p/perlin/0_6_0";
  inputs."perlin-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."perlin-0_6_1".type = "github";
  inputs."perlin-0_6_1".owner = "riinr";
  inputs."perlin-0_6_1".repo = "flake-nimble";
  inputs."perlin-0_6_1".ref = "flake-pinning";
  inputs."perlin-0_6_1".dir = "nimpkgs/p/perlin/0_6_1";
  inputs."perlin-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."perlin-0_7_0".type = "github";
  inputs."perlin-0_7_0".owner = "riinr";
  inputs."perlin-0_7_0".repo = "flake-nimble";
  inputs."perlin-0_7_0".ref = "flake-pinning";
  inputs."perlin-0_7_0".dir = "nimpkgs/p/perlin/0_7_0";
  inputs."perlin-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}