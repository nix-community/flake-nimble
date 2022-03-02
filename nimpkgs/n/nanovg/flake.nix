{
  description = ''Nim wrapper for the C NanoVG antialiased vector graphics rendering library for OpenGL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nanovg-master".type = "github";
  inputs."nanovg-master".owner = "riinr";
  inputs."nanovg-master".repo = "flake-nimble";
  inputs."nanovg-master".ref = "flake-pinning";
  inputs."nanovg-master".dir = "nimpkgs/n/nanovg/master";
  inputs."nanovg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nanovg-v0_1_0".type = "github";
  inputs."nanovg-v0_1_0".owner = "riinr";
  inputs."nanovg-v0_1_0".repo = "flake-nimble";
  inputs."nanovg-v0_1_0".ref = "flake-pinning";
  inputs."nanovg-v0_1_0".dir = "nimpkgs/n/nanovg/v0_1_0";
  inputs."nanovg-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nanovg-v0_2_0".type = "github";
  inputs."nanovg-v0_2_0".owner = "riinr";
  inputs."nanovg-v0_2_0".repo = "flake-nimble";
  inputs."nanovg-v0_2_0".ref = "flake-pinning";
  inputs."nanovg-v0_2_0".dir = "nimpkgs/n/nanovg/v0_2_0";
  inputs."nanovg-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nanovg-v0_2_1".type = "github";
  inputs."nanovg-v0_2_1".owner = "riinr";
  inputs."nanovg-v0_2_1".repo = "flake-nimble";
  inputs."nanovg-v0_2_1".ref = "flake-pinning";
  inputs."nanovg-v0_2_1".dir = "nimpkgs/n/nanovg/v0_2_1";
  inputs."nanovg-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nanovg-v0_2_2".type = "github";
  inputs."nanovg-v0_2_2".owner = "riinr";
  inputs."nanovg-v0_2_2".repo = "flake-nimble";
  inputs."nanovg-v0_2_2".ref = "flake-pinning";
  inputs."nanovg-v0_2_2".dir = "nimpkgs/n/nanovg/v0_2_2";
  inputs."nanovg-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nanovg-v0_2_3".type = "github";
  inputs."nanovg-v0_2_3".owner = "riinr";
  inputs."nanovg-v0_2_3".repo = "flake-nimble";
  inputs."nanovg-v0_2_3".ref = "flake-pinning";
  inputs."nanovg-v0_2_3".dir = "nimpkgs/n/nanovg/v0_2_3";
  inputs."nanovg-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nanovg-v0_3_0".type = "github";
  inputs."nanovg-v0_3_0".owner = "riinr";
  inputs."nanovg-v0_3_0".repo = "flake-nimble";
  inputs."nanovg-v0_3_0".ref = "flake-pinning";
  inputs."nanovg-v0_3_0".dir = "nimpkgs/n/nanovg/v0_3_0";
  inputs."nanovg-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nanovg-v0_3_1".type = "github";
  inputs."nanovg-v0_3_1".owner = "riinr";
  inputs."nanovg-v0_3_1".repo = "flake-nimble";
  inputs."nanovg-v0_3_1".ref = "flake-pinning";
  inputs."nanovg-v0_3_1".dir = "nimpkgs/n/nanovg/v0_3_1";
  inputs."nanovg-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nanovg-v0_3_2".type = "github";
  inputs."nanovg-v0_3_2".owner = "riinr";
  inputs."nanovg-v0_3_2".repo = "flake-nimble";
  inputs."nanovg-v0_3_2".ref = "flake-pinning";
  inputs."nanovg-v0_3_2".dir = "nimpkgs/n/nanovg/v0_3_2";
  inputs."nanovg-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nanovg-v0_3_3".type = "github";
  inputs."nanovg-v0_3_3".owner = "riinr";
  inputs."nanovg-v0_3_3".repo = "flake-nimble";
  inputs."nanovg-v0_3_3".ref = "flake-pinning";
  inputs."nanovg-v0_3_3".dir = "nimpkgs/n/nanovg/v0_3_3";
  inputs."nanovg-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}