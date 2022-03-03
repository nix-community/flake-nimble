{
  description = ''A light interface and selection of utilities for working with OpenGL and SDL2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."glbits-master".type = "github";
  inputs."glbits-master".owner = "riinr";
  inputs."glbits-master".repo = "flake-nimble";
  inputs."glbits-master".ref = "flake-pinning";
  inputs."glbits-master".dir = "nimpkgs/g/glbits/master";
  inputs."glbits-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glbits-0_1_0".type = "github";
  inputs."glbits-0_1_0".owner = "riinr";
  inputs."glbits-0_1_0".repo = "flake-nimble";
  inputs."glbits-0_1_0".ref = "flake-pinning";
  inputs."glbits-0_1_0".dir = "nimpkgs/g/glbits/0_1_0";
  inputs."glbits-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glbits-v0_1_1".type = "github";
  inputs."glbits-v0_1_1".owner = "riinr";
  inputs."glbits-v0_1_1".repo = "flake-nimble";
  inputs."glbits-v0_1_1".ref = "flake-pinning";
  inputs."glbits-v0_1_1".dir = "nimpkgs/g/glbits/v0_1_1";
  inputs."glbits-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glbits-v0_1_2".type = "github";
  inputs."glbits-v0_1_2".owner = "riinr";
  inputs."glbits-v0_1_2".repo = "flake-nimble";
  inputs."glbits-v0_1_2".ref = "flake-pinning";
  inputs."glbits-v0_1_2".dir = "nimpkgs/g/glbits/v0_1_2";
  inputs."glbits-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glbits-v0_1_3".type = "github";
  inputs."glbits-v0_1_3".owner = "riinr";
  inputs."glbits-v0_1_3".repo = "flake-nimble";
  inputs."glbits-v0_1_3".ref = "flake-pinning";
  inputs."glbits-v0_1_3".dir = "nimpkgs/g/glbits/v0_1_3";
  inputs."glbits-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glbits-v0_1_4".type = "github";
  inputs."glbits-v0_1_4".owner = "riinr";
  inputs."glbits-v0_1_4".repo = "flake-nimble";
  inputs."glbits-v0_1_4".ref = "flake-pinning";
  inputs."glbits-v0_1_4".dir = "nimpkgs/g/glbits/v0_1_4";
  inputs."glbits-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."glbits-v0_1_5".type = "github";
  inputs."glbits-v0_1_5".owner = "riinr";
  inputs."glbits-v0_1_5".repo = "flake-nimble";
  inputs."glbits-v0_1_5".ref = "flake-pinning";
  inputs."glbits-v0_1_5".dir = "nimpkgs/g/glbits/v0_1_5";
  inputs."glbits-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}