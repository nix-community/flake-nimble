{
  description = ''High-level and low-level wrapper for OpenGL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."opengl-master".type = "github";
  inputs."opengl-master".owner = "riinr";
  inputs."opengl-master".repo = "flake-nimble";
  inputs."opengl-master".ref = "flake-pinning";
  inputs."opengl-master".dir = "nimpkgs/o/opengl/master";
  inputs."opengl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."opengl-1_0".type = "github";
  inputs."opengl-1_0".owner = "riinr";
  inputs."opengl-1_0".repo = "flake-nimble";
  inputs."opengl-1_0".ref = "flake-pinning";
  inputs."opengl-1_0".dir = "nimpkgs/o/opengl/1_0";
  inputs."opengl-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."opengl-1_0_1".type = "github";
  inputs."opengl-1_0_1".owner = "riinr";
  inputs."opengl-1_0_1".repo = "flake-nimble";
  inputs."opengl-1_0_1".ref = "flake-pinning";
  inputs."opengl-1_0_1".dir = "nimpkgs/o/opengl/1_0_1";
  inputs."opengl-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."opengl-1_1_0".type = "github";
  inputs."opengl-1_1_0".owner = "riinr";
  inputs."opengl-1_1_0".repo = "flake-nimble";
  inputs."opengl-1_1_0".ref = "flake-pinning";
  inputs."opengl-1_1_0".dir = "nimpkgs/o/opengl/1_1_0";
  inputs."opengl-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."opengl-1_2_0".type = "github";
  inputs."opengl-1_2_0".owner = "riinr";
  inputs."opengl-1_2_0".repo = "flake-nimble";
  inputs."opengl-1_2_0".ref = "flake-pinning";
  inputs."opengl-1_2_0".dir = "nimpkgs/o/opengl/1_2_0";
  inputs."opengl-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."opengl-1_2_3".type = "github";
  inputs."opengl-1_2_3".owner = "riinr";
  inputs."opengl-1_2_3".repo = "flake-nimble";
  inputs."opengl-1_2_3".ref = "flake-pinning";
  inputs."opengl-1_2_3".dir = "nimpkgs/o/opengl/1_2_3";
  inputs."opengl-1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."opengl-1_2_4".type = "github";
  inputs."opengl-1_2_4".owner = "riinr";
  inputs."opengl-1_2_4".repo = "flake-nimble";
  inputs."opengl-1_2_4".ref = "flake-pinning";
  inputs."opengl-1_2_4".dir = "nimpkgs/o/opengl/1_2_4";
  inputs."opengl-1_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."opengl-1_2_5".type = "github";
  inputs."opengl-1_2_5".owner = "riinr";
  inputs."opengl-1_2_5".repo = "flake-nimble";
  inputs."opengl-1_2_5".ref = "flake-pinning";
  inputs."opengl-1_2_5".dir = "nimpkgs/o/opengl/1_2_5";
  inputs."opengl-1_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."opengl-1_2_6".type = "github";
  inputs."opengl-1_2_6".owner = "riinr";
  inputs."opengl-1_2_6".repo = "flake-nimble";
  inputs."opengl-1_2_6".ref = "flake-pinning";
  inputs."opengl-1_2_6".dir = "nimpkgs/o/opengl/1_2_6";
  inputs."opengl-1_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."opengl-v1_2_2".type = "github";
  inputs."opengl-v1_2_2".owner = "riinr";
  inputs."opengl-v1_2_2".repo = "flake-nimble";
  inputs."opengl-v1_2_2".ref = "flake-pinning";
  inputs."opengl-v1_2_2".dir = "nimpkgs/o/opengl/v1_2_2";
  inputs."opengl-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}