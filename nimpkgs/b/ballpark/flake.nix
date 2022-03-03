{
  description = ''An amateur radio tool to get you a ballpark estimate of where a given Maidenhead grid square is.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ballpark-main".type = "github";
  inputs."ballpark-main".owner = "riinr";
  inputs."ballpark-main".repo = "flake-nimble";
  inputs."ballpark-main".ref = "flake-pinning";
  inputs."ballpark-main".dir = "nimpkgs/b/ballpark/main";
  inputs."ballpark-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ballpark-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ballpark-v1_0_0".type = "github";
  inputs."ballpark-v1_0_0".owner = "riinr";
  inputs."ballpark-v1_0_0".repo = "flake-nimble";
  inputs."ballpark-v1_0_0".ref = "flake-pinning";
  inputs."ballpark-v1_0_0".dir = "nimpkgs/b/ballpark/v1_0_0";
  inputs."ballpark-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ballpark-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ballpark-v1_0_1".type = "github";
  inputs."ballpark-v1_0_1".owner = "riinr";
  inputs."ballpark-v1_0_1".repo = "flake-nimble";
  inputs."ballpark-v1_0_1".ref = "flake-pinning";
  inputs."ballpark-v1_0_1".dir = "nimpkgs/b/ballpark/v1_0_1";
  inputs."ballpark-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ballpark-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}