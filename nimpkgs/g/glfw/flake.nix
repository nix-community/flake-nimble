{
  description = ''A high-level GLFW 3 wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."glfw-master".type = "github";
  inputs."glfw-master".owner = "riinr";
  inputs."glfw-master".repo = "flake-nimble";
  inputs."glfw-master".ref = "flake-pinning";
  inputs."glfw-master".dir = "nimpkgs/g/glfw/master";
  inputs."glfw-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glfw-v0_2_0".type = "github";
  inputs."glfw-v0_2_0".owner = "riinr";
  inputs."glfw-v0_2_0".repo = "flake-nimble";
  inputs."glfw-v0_2_0".ref = "flake-pinning";
  inputs."glfw-v0_2_0".dir = "nimpkgs/g/glfw/v0_2_0";
  inputs."glfw-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glfw-v0_2_1".type = "github";
  inputs."glfw-v0_2_1".owner = "riinr";
  inputs."glfw-v0_2_1".repo = "flake-nimble";
  inputs."glfw-v0_2_1".ref = "flake-pinning";
  inputs."glfw-v0_2_1".dir = "nimpkgs/g/glfw/v0_2_1";
  inputs."glfw-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glfw-v0_3_0".type = "github";
  inputs."glfw-v0_3_0".owner = "riinr";
  inputs."glfw-v0_3_0".repo = "flake-nimble";
  inputs."glfw-v0_3_0".ref = "flake-pinning";
  inputs."glfw-v0_3_0".dir = "nimpkgs/g/glfw/v0_3_0";
  inputs."glfw-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glfw-v0_3_1".type = "github";
  inputs."glfw-v0_3_1".owner = "riinr";
  inputs."glfw-v0_3_1".repo = "flake-nimble";
  inputs."glfw-v0_3_1".ref = "flake-pinning";
  inputs."glfw-v0_3_1".dir = "nimpkgs/g/glfw/v0_3_1";
  inputs."glfw-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glfw-v3_3_0_0".type = "github";
  inputs."glfw-v3_3_0_0".owner = "riinr";
  inputs."glfw-v3_3_0_0".repo = "flake-nimble";
  inputs."glfw-v3_3_0_0".ref = "flake-pinning";
  inputs."glfw-v3_3_0_0".dir = "nimpkgs/g/glfw/v3_3_0_0";
  inputs."glfw-v3_3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v3_3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glfw-v3_3_0_1".type = "github";
  inputs."glfw-v3_3_0_1".owner = "riinr";
  inputs."glfw-v3_3_0_1".repo = "flake-nimble";
  inputs."glfw-v3_3_0_1".ref = "flake-pinning";
  inputs."glfw-v3_3_0_1".dir = "nimpkgs/g/glfw/v3_3_0_1";
  inputs."glfw-v3_3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v3_3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glfw-v3_3_0_2".type = "github";
  inputs."glfw-v3_3_0_2".owner = "riinr";
  inputs."glfw-v3_3_0_2".repo = "flake-nimble";
  inputs."glfw-v3_3_0_2".ref = "flake-pinning";
  inputs."glfw-v3_3_0_2".dir = "nimpkgs/g/glfw/v3_3_0_2";
  inputs."glfw-v3_3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v3_3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glfw-v3_3_0_3".type = "github";
  inputs."glfw-v3_3_0_3".owner = "riinr";
  inputs."glfw-v3_3_0_3".repo = "flake-nimble";
  inputs."glfw-v3_3_0_3".ref = "flake-pinning";
  inputs."glfw-v3_3_0_3".dir = "nimpkgs/g/glfw/v3_3_0_3";
  inputs."glfw-v3_3_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v3_3_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glfw-v3_3_2_1".type = "github";
  inputs."glfw-v3_3_2_1".owner = "riinr";
  inputs."glfw-v3_3_2_1".repo = "flake-nimble";
  inputs."glfw-v3_3_2_1".ref = "flake-pinning";
  inputs."glfw-v3_3_2_1".dir = "nimpkgs/g/glfw/v3_3_2_1";
  inputs."glfw-v3_3_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v3_3_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glfw-v3_3_4_0".type = "github";
  inputs."glfw-v3_3_4_0".owner = "riinr";
  inputs."glfw-v3_3_4_0".repo = "flake-nimble";
  inputs."glfw-v3_3_4_0".ref = "flake-pinning";
  inputs."glfw-v3_3_4_0".dir = "nimpkgs/g/glfw/v3_3_4_0";
  inputs."glfw-v3_3_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v3_3_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}