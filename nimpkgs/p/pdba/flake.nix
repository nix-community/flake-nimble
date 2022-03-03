{
  description = ''A postgres DB adapter for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pdba-master".type = "github";
  inputs."pdba-master".owner = "riinr";
  inputs."pdba-master".repo = "flake-nimble";
  inputs."pdba-master".ref = "flake-pinning";
  inputs."pdba-master".dir = "nimpkgs/p/pdba/master";
  inputs."pdba-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pdba-v0_2_0".type = "github";
  inputs."pdba-v0_2_0".owner = "riinr";
  inputs."pdba-v0_2_0".repo = "flake-nimble";
  inputs."pdba-v0_2_0".ref = "flake-pinning";
  inputs."pdba-v0_2_0".dir = "nimpkgs/p/pdba/v0_2_0";
  inputs."pdba-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pdba-v0_2_1".type = "github";
  inputs."pdba-v0_2_1".owner = "riinr";
  inputs."pdba-v0_2_1".repo = "flake-nimble";
  inputs."pdba-v0_2_1".ref = "flake-pinning";
  inputs."pdba-v0_2_1".dir = "nimpkgs/p/pdba/v0_2_1";
  inputs."pdba-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pdba-v0_2_2".type = "github";
  inputs."pdba-v0_2_2".owner = "riinr";
  inputs."pdba-v0_2_2".repo = "flake-nimble";
  inputs."pdba-v0_2_2".ref = "flake-pinning";
  inputs."pdba-v0_2_2".dir = "nimpkgs/p/pdba/v0_2_2";
  inputs."pdba-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pdba-v0_2_3".type = "github";
  inputs."pdba-v0_2_3".owner = "riinr";
  inputs."pdba-v0_2_3".repo = "flake-nimble";
  inputs."pdba-v0_2_3".ref = "flake-pinning";
  inputs."pdba-v0_2_3".dir = "nimpkgs/p/pdba/v0_2_3";
  inputs."pdba-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."pdba-v0_2_4".type = "github";
  inputs."pdba-v0_2_4".owner = "riinr";
  inputs."pdba-v0_2_4".repo = "flake-nimble";
  inputs."pdba-v0_2_4".ref = "flake-pinning";
  inputs."pdba-v0_2_4".dir = "nimpkgs/p/pdba/v0_2_4";
  inputs."pdba-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pdba-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}