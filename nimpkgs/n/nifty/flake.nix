{
  description = ''A decentralized (pseudo) package manager and script runner.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nifty-master".type = "github";
  inputs."nifty-master".owner = "riinr";
  inputs."nifty-master".repo = "flake-nimble";
  inputs."nifty-master".ref = "flake-pinning";
  inputs."nifty-master".dir = "nimpkgs/n/nifty/master";
  inputs."nifty-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nifty-v0_1_0".type = "github";
  inputs."nifty-v0_1_0".owner = "riinr";
  inputs."nifty-v0_1_0".repo = "flake-nimble";
  inputs."nifty-v0_1_0".ref = "flake-pinning";
  inputs."nifty-v0_1_0".dir = "nimpkgs/n/nifty/v0_1_0";
  inputs."nifty-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nifty-v1_0_0".type = "github";
  inputs."nifty-v1_0_0".owner = "riinr";
  inputs."nifty-v1_0_0".repo = "flake-nimble";
  inputs."nifty-v1_0_0".ref = "flake-pinning";
  inputs."nifty-v1_0_0".dir = "nimpkgs/n/nifty/v1_0_0";
  inputs."nifty-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nifty-v1_0_1".type = "github";
  inputs."nifty-v1_0_1".owner = "riinr";
  inputs."nifty-v1_0_1".repo = "flake-nimble";
  inputs."nifty-v1_0_1".ref = "flake-pinning";
  inputs."nifty-v1_0_1".dir = "nimpkgs/n/nifty/v1_0_1";
  inputs."nifty-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nifty-v1_1_0".type = "github";
  inputs."nifty-v1_1_0".owner = "riinr";
  inputs."nifty-v1_1_0".repo = "flake-nimble";
  inputs."nifty-v1_1_0".ref = "flake-pinning";
  inputs."nifty-v1_1_0".dir = "nimpkgs/n/nifty/v1_1_0";
  inputs."nifty-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nifty-v1_2_0".type = "github";
  inputs."nifty-v1_2_0".owner = "riinr";
  inputs."nifty-v1_2_0".repo = "flake-nimble";
  inputs."nifty-v1_2_0".ref = "flake-pinning";
  inputs."nifty-v1_2_0".dir = "nimpkgs/n/nifty/v1_2_0";
  inputs."nifty-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nifty-v1_2_1".type = "github";
  inputs."nifty-v1_2_1".owner = "riinr";
  inputs."nifty-v1_2_1".repo = "flake-nimble";
  inputs."nifty-v1_2_1".ref = "flake-pinning";
  inputs."nifty-v1_2_1".dir = "nimpkgs/n/nifty/v1_2_1";
  inputs."nifty-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nifty-v1_2_2".type = "github";
  inputs."nifty-v1_2_2".owner = "riinr";
  inputs."nifty-v1_2_2".repo = "flake-nimble";
  inputs."nifty-v1_2_2".ref = "flake-pinning";
  inputs."nifty-v1_2_2".dir = "nimpkgs/n/nifty/v1_2_2";
  inputs."nifty-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}