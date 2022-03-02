{
  description = ''Static GLFW for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."staticglfw-master".type = "github";
  inputs."staticglfw-master".owner = "riinr";
  inputs."staticglfw-master".repo = "flake-nimble";
  inputs."staticglfw-master".ref = "flake-pinning";
  inputs."staticglfw-master".dir = "nimpkgs/s/staticglfw/master";
  inputs."staticglfw-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."staticglfw-4_0_1".type = "github";
  inputs."staticglfw-4_0_1".owner = "riinr";
  inputs."staticglfw-4_0_1".repo = "flake-nimble";
  inputs."staticglfw-4_0_1".ref = "flake-pinning";
  inputs."staticglfw-4_0_1".dir = "nimpkgs/s/staticglfw/4_0_1";
  inputs."staticglfw-4_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."staticglfw-4_1_0".type = "github";
  inputs."staticglfw-4_1_0".owner = "riinr";
  inputs."staticglfw-4_1_0".repo = "flake-nimble";
  inputs."staticglfw-4_1_0".ref = "flake-pinning";
  inputs."staticglfw-4_1_0".dir = "nimpkgs/s/staticglfw/4_1_0";
  inputs."staticglfw-4_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."staticglfw-4_1_1".type = "github";
  inputs."staticglfw-4_1_1".owner = "riinr";
  inputs."staticglfw-4_1_1".repo = "flake-nimble";
  inputs."staticglfw-4_1_1".ref = "flake-pinning";
  inputs."staticglfw-4_1_1".dir = "nimpkgs/s/staticglfw/4_1_1";
  inputs."staticglfw-4_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."staticglfw-4_1_2".type = "github";
  inputs."staticglfw-4_1_2".owner = "riinr";
  inputs."staticglfw-4_1_2".repo = "flake-nimble";
  inputs."staticglfw-4_1_2".ref = "flake-pinning";
  inputs."staticglfw-4_1_2".dir = "nimpkgs/s/staticglfw/4_1_2";
  inputs."staticglfw-4_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."staticglfw-4_1_3".type = "github";
  inputs."staticglfw-4_1_3".owner = "riinr";
  inputs."staticglfw-4_1_3".repo = "flake-nimble";
  inputs."staticglfw-4_1_3".ref = "flake-pinning";
  inputs."staticglfw-4_1_3".dir = "nimpkgs/s/staticglfw/4_1_3";
  inputs."staticglfw-4_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."staticglfw-v0_2_0".type = "github";
  inputs."staticglfw-v0_2_0".owner = "riinr";
  inputs."staticglfw-v0_2_0".repo = "flake-nimble";
  inputs."staticglfw-v0_2_0".ref = "flake-pinning";
  inputs."staticglfw-v0_2_0".dir = "nimpkgs/s/staticglfw/v0_2_0";
  inputs."staticglfw-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."staticglfw-v0_2_1".type = "github";
  inputs."staticglfw-v0_2_1".owner = "riinr";
  inputs."staticglfw-v0_2_1".repo = "flake-nimble";
  inputs."staticglfw-v0_2_1".ref = "flake-pinning";
  inputs."staticglfw-v0_2_1".dir = "nimpkgs/s/staticglfw/v0_2_1";
  inputs."staticglfw-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."staticglfw-v0_3_0".type = "github";
  inputs."staticglfw-v0_3_0".owner = "riinr";
  inputs."staticglfw-v0_3_0".repo = "flake-nimble";
  inputs."staticglfw-v0_3_0".ref = "flake-pinning";
  inputs."staticglfw-v0_3_0".dir = "nimpkgs/s/staticglfw/v0_3_0";
  inputs."staticglfw-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."staticglfw-v0_3_1".type = "github";
  inputs."staticglfw-v0_3_1".owner = "riinr";
  inputs."staticglfw-v0_3_1".repo = "flake-nimble";
  inputs."staticglfw-v0_3_1".ref = "flake-pinning";
  inputs."staticglfw-v0_3_1".dir = "nimpkgs/s/staticglfw/v0_3_1";
  inputs."staticglfw-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."staticglfw-v3_3_0_0".type = "github";
  inputs."staticglfw-v3_3_0_0".owner = "riinr";
  inputs."staticglfw-v3_3_0_0".repo = "flake-nimble";
  inputs."staticglfw-v3_3_0_0".ref = "flake-pinning";
  inputs."staticglfw-v3_3_0_0".dir = "nimpkgs/s/staticglfw/v3_3_0_0";
  inputs."staticglfw-v3_3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v3_3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."staticglfw-v3_3_0_1".type = "github";
  inputs."staticglfw-v3_3_0_1".owner = "riinr";
  inputs."staticglfw-v3_3_0_1".repo = "flake-nimble";
  inputs."staticglfw-v3_3_0_1".ref = "flake-pinning";
  inputs."staticglfw-v3_3_0_1".dir = "nimpkgs/s/staticglfw/v3_3_0_1";
  inputs."staticglfw-v3_3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v3_3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."staticglfw-v3_3_0_2".type = "github";
  inputs."staticglfw-v3_3_0_2".owner = "riinr";
  inputs."staticglfw-v3_3_0_2".repo = "flake-nimble";
  inputs."staticglfw-v3_3_0_2".ref = "flake-pinning";
  inputs."staticglfw-v3_3_0_2".dir = "nimpkgs/s/staticglfw/v3_3_0_2";
  inputs."staticglfw-v3_3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v3_3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}