{
  description = ''X-Plane XPLM SDK wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xplm-nim-develop".type = "github";
  inputs."xplm-nim-develop".owner = "riinr";
  inputs."xplm-nim-develop".repo = "flake-nimble";
  inputs."xplm-nim-develop".ref = "flake-pinning";
  inputs."xplm-nim-develop".dir = "nimpkgs/x/xplm-nim/develop";
  inputs."xplm-nim-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xplm-nim-master".type = "github";
  inputs."xplm-nim-master".owner = "riinr";
  inputs."xplm-nim-master".repo = "flake-nimble";
  inputs."xplm-nim-master".ref = "flake-pinning";
  inputs."xplm-nim-master".dir = "nimpkgs/x/xplm-nim/master";
  inputs."xplm-nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xplm-nim-v0_1_0".type = "github";
  inputs."xplm-nim-v0_1_0".owner = "riinr";
  inputs."xplm-nim-v0_1_0".repo = "flake-nimble";
  inputs."xplm-nim-v0_1_0".ref = "flake-pinning";
  inputs."xplm-nim-v0_1_0".dir = "nimpkgs/x/xplm-nim/v0_1_0";
  inputs."xplm-nim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xplm-nim-v0_1_1".type = "github";
  inputs."xplm-nim-v0_1_1".owner = "riinr";
  inputs."xplm-nim-v0_1_1".repo = "flake-nimble";
  inputs."xplm-nim-v0_1_1".ref = "flake-pinning";
  inputs."xplm-nim-v0_1_1".dir = "nimpkgs/x/xplm-nim/v0_1_1";
  inputs."xplm-nim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xplm-nim-v0_2_0".type = "github";
  inputs."xplm-nim-v0_2_0".owner = "riinr";
  inputs."xplm-nim-v0_2_0".repo = "flake-nimble";
  inputs."xplm-nim-v0_2_0".ref = "flake-pinning";
  inputs."xplm-nim-v0_2_0".dir = "nimpkgs/x/xplm-nim/v0_2_0";
  inputs."xplm-nim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xplm-nim-v0_2_1".type = "github";
  inputs."xplm-nim-v0_2_1".owner = "riinr";
  inputs."xplm-nim-v0_2_1".repo = "flake-nimble";
  inputs."xplm-nim-v0_2_1".ref = "flake-pinning";
  inputs."xplm-nim-v0_2_1".dir = "nimpkgs/x/xplm-nim/v0_2_1";
  inputs."xplm-nim-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xplm-nim-v0_2_2".type = "github";
  inputs."xplm-nim-v0_2_2".owner = "riinr";
  inputs."xplm-nim-v0_2_2".repo = "flake-nimble";
  inputs."xplm-nim-v0_2_2".ref = "flake-pinning";
  inputs."xplm-nim-v0_2_2".dir = "nimpkgs/x/xplm-nim/v0_2_2";
  inputs."xplm-nim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xplm-nim-v0_2_3".type = "github";
  inputs."xplm-nim-v0_2_3".owner = "riinr";
  inputs."xplm-nim-v0_2_3".repo = "flake-nimble";
  inputs."xplm-nim-v0_2_3".ref = "flake-pinning";
  inputs."xplm-nim-v0_2_3".dir = "nimpkgs/x/xplm-nim/v0_2_3";
  inputs."xplm-nim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xplm-nim-v0_2_4".type = "github";
  inputs."xplm-nim-v0_2_4".owner = "riinr";
  inputs."xplm-nim-v0_2_4".repo = "flake-nimble";
  inputs."xplm-nim-v0_2_4".ref = "flake-pinning";
  inputs."xplm-nim-v0_2_4".dir = "nimpkgs/x/xplm-nim/v0_2_4";
  inputs."xplm-nim-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xplm-nim-v0_2_5".type = "github";
  inputs."xplm-nim-v0_2_5".owner = "riinr";
  inputs."xplm-nim-v0_2_5".repo = "flake-nimble";
  inputs."xplm-nim-v0_2_5".ref = "flake-pinning";
  inputs."xplm-nim-v0_2_5".dir = "nimpkgs/x/xplm-nim/v0_2_5";
  inputs."xplm-nim-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}