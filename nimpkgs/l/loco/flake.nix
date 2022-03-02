{
  description = ''Localization package for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."loco-develop".type = "github";
  inputs."loco-develop".owner = "riinr";
  inputs."loco-develop".repo = "flake-nimble";
  inputs."loco-develop".ref = "flake-pinning";
  inputs."loco-develop".dir = "nimpkgs/l/loco/develop";
  inputs."loco-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."loco-master".type = "github";
  inputs."loco-master".owner = "riinr";
  inputs."loco-master".repo = "flake-nimble";
  inputs."loco-master".ref = "flake-pinning";
  inputs."loco-master".dir = "nimpkgs/l/loco/master";
  inputs."loco-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."loco-0_1_0".type = "github";
  inputs."loco-0_1_0".owner = "riinr";
  inputs."loco-0_1_0".repo = "flake-nimble";
  inputs."loco-0_1_0".ref = "flake-pinning";
  inputs."loco-0_1_0".dir = "nimpkgs/l/loco/0_1_0";
  inputs."loco-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."loco-0_1_1".type = "github";
  inputs."loco-0_1_1".owner = "riinr";
  inputs."loco-0_1_1".repo = "flake-nimble";
  inputs."loco-0_1_1".ref = "flake-pinning";
  inputs."loco-0_1_1".dir = "nimpkgs/l/loco/0_1_1";
  inputs."loco-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."loco-0_1_2".type = "github";
  inputs."loco-0_1_2".owner = "riinr";
  inputs."loco-0_1_2".repo = "flake-nimble";
  inputs."loco-0_1_2".ref = "flake-pinning";
  inputs."loco-0_1_2".dir = "nimpkgs/l/loco/0_1_2";
  inputs."loco-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}