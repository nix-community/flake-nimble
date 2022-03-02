{
  description = ''SVG output from a shell.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."svgo-master".type = "github";
  inputs."svgo-master".owner = "riinr";
  inputs."svgo-master".repo = "flake-nimble";
  inputs."svgo-master".ref = "flake-pinning";
  inputs."svgo-master".dir = "nimpkgs/s/svgo/master";
  inputs."svgo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svgo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svgo-v0_1_0".type = "github";
  inputs."svgo-v0_1_0".owner = "riinr";
  inputs."svgo-v0_1_0".repo = "flake-nimble";
  inputs."svgo-v0_1_0".ref = "flake-pinning";
  inputs."svgo-v0_1_0".dir = "nimpkgs/s/svgo/v0_1_0";
  inputs."svgo-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svgo-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svgo-v0_2_0".type = "github";
  inputs."svgo-v0_2_0".owner = "riinr";
  inputs."svgo-v0_2_0".repo = "flake-nimble";
  inputs."svgo-v0_2_0".ref = "flake-pinning";
  inputs."svgo-v0_2_0".dir = "nimpkgs/s/svgo/v0_2_0";
  inputs."svgo-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svgo-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svgo-v0_2_1".type = "github";
  inputs."svgo-v0_2_1".owner = "riinr";
  inputs."svgo-v0_2_1".repo = "flake-nimble";
  inputs."svgo-v0_2_1".ref = "flake-pinning";
  inputs."svgo-v0_2_1".dir = "nimpkgs/s/svgo/v0_2_1";
  inputs."svgo-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svgo-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svgo-v0_2_2".type = "github";
  inputs."svgo-v0_2_2".owner = "riinr";
  inputs."svgo-v0_2_2".repo = "flake-nimble";
  inputs."svgo-v0_2_2".ref = "flake-pinning";
  inputs."svgo-v0_2_2".dir = "nimpkgs/s/svgo/v0_2_2";
  inputs."svgo-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svgo-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svgo-v0_3_0".type = "github";
  inputs."svgo-v0_3_0".owner = "riinr";
  inputs."svgo-v0_3_0".repo = "flake-nimble";
  inputs."svgo-v0_3_0".ref = "flake-pinning";
  inputs."svgo-v0_3_0".dir = "nimpkgs/s/svgo/v0_3_0";
  inputs."svgo-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svgo-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."svgo-v0_3_1".type = "github";
  inputs."svgo-v0_3_1".owner = "riinr";
  inputs."svgo-v0_3_1".repo = "flake-nimble";
  inputs."svgo-v0_3_1".ref = "flake-pinning";
  inputs."svgo-v0_3_1".dir = "nimpkgs/s/svgo/v0_3_1";
  inputs."svgo-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svgo-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}