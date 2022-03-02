{
  description = ''Matrix library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."manu-master".type = "github";
  inputs."manu-master".owner = "riinr";
  inputs."manu-master".repo = "flake-nimble";
  inputs."manu-master".ref = "flake-pinning";
  inputs."manu-master".dir = "nimpkgs/m/manu/master";
  inputs."manu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-1_9_1".type = "github";
  inputs."manu-1_9_1".owner = "riinr";
  inputs."manu-1_9_1".repo = "flake-nimble";
  inputs."manu-1_9_1".ref = "flake-pinning";
  inputs."manu-1_9_1".dir = "nimpkgs/m/manu/1_9_1";
  inputs."manu-1_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-1_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v1_0".type = "github";
  inputs."manu-v1_0".owner = "riinr";
  inputs."manu-v1_0".repo = "flake-nimble";
  inputs."manu-v1_0".ref = "flake-pinning";
  inputs."manu-v1_0".dir = "nimpkgs/m/manu/v1_0";
  inputs."manu-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v1_1".type = "github";
  inputs."manu-v1_1".owner = "riinr";
  inputs."manu-v1_1".repo = "flake-nimble";
  inputs."manu-v1_1".ref = "flake-pinning";
  inputs."manu-v1_1".dir = "nimpkgs/m/manu/v1_1";
  inputs."manu-v1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v1_2".type = "github";
  inputs."manu-v1_2".owner = "riinr";
  inputs."manu-v1_2".repo = "flake-nimble";
  inputs."manu-v1_2".ref = "flake-pinning";
  inputs."manu-v1_2".dir = "nimpkgs/m/manu/v1_2";
  inputs."manu-v1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v1_3".type = "github";
  inputs."manu-v1_3".owner = "riinr";
  inputs."manu-v1_3".repo = "flake-nimble";
  inputs."manu-v1_3".ref = "flake-pinning";
  inputs."manu-v1_3".dir = "nimpkgs/m/manu/v1_3";
  inputs."manu-v1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v1_4".type = "github";
  inputs."manu-v1_4".owner = "riinr";
  inputs."manu-v1_4".repo = "flake-nimble";
  inputs."manu-v1_4".ref = "flake-pinning";
  inputs."manu-v1_4".dir = "nimpkgs/m/manu/v1_4";
  inputs."manu-v1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v1_5".type = "github";
  inputs."manu-v1_5".owner = "riinr";
  inputs."manu-v1_5".repo = "flake-nimble";
  inputs."manu-v1_5".ref = "flake-pinning";
  inputs."manu-v1_5".dir = "nimpkgs/m/manu/v1_5";
  inputs."manu-v1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v1_9_1".type = "github";
  inputs."manu-v1_9_1".owner = "riinr";
  inputs."manu-v1_9_1".repo = "flake-nimble";
  inputs."manu-v1_9_1".ref = "flake-pinning";
  inputs."manu-v1_9_1".dir = "nimpkgs/m/manu/v1_9_1";
  inputs."manu-v1_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v2_0".type = "github";
  inputs."manu-v2_0".owner = "riinr";
  inputs."manu-v2_0".repo = "flake-nimble";
  inputs."manu-v2_0".ref = "flake-pinning";
  inputs."manu-v2_0".dir = "nimpkgs/m/manu/v2_0";
  inputs."manu-v2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v2_0_1".type = "github";
  inputs."manu-v2_0_1".owner = "riinr";
  inputs."manu-v2_0_1".repo = "flake-nimble";
  inputs."manu-v2_0_1".ref = "flake-pinning";
  inputs."manu-v2_0_1".dir = "nimpkgs/m/manu/v2_0_1";
  inputs."manu-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v2_0_4".type = "github";
  inputs."manu-v2_0_4".owner = "riinr";
  inputs."manu-v2_0_4".repo = "flake-nimble";
  inputs."manu-v2_0_4".ref = "flake-pinning";
  inputs."manu-v2_0_4".dir = "nimpkgs/m/manu/v2_0_4";
  inputs."manu-v2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v2_1_0".type = "github";
  inputs."manu-v2_1_0".owner = "riinr";
  inputs."manu-v2_1_0".repo = "flake-nimble";
  inputs."manu-v2_1_0".ref = "flake-pinning";
  inputs."manu-v2_1_0".dir = "nimpkgs/m/manu/v2_1_0";
  inputs."manu-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v2_1_1".type = "github";
  inputs."manu-v2_1_1".owner = "riinr";
  inputs."manu-v2_1_1".repo = "flake-nimble";
  inputs."manu-v2_1_1".ref = "flake-pinning";
  inputs."manu-v2_1_1".dir = "nimpkgs/m/manu/v2_1_1";
  inputs."manu-v2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v2_1_2".type = "github";
  inputs."manu-v2_1_2".owner = "riinr";
  inputs."manu-v2_1_2".repo = "flake-nimble";
  inputs."manu-v2_1_2".ref = "flake-pinning";
  inputs."manu-v2_1_2".dir = "nimpkgs/m/manu/v2_1_2";
  inputs."manu-v2_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v2_2_0".type = "github";
  inputs."manu-v2_2_0".owner = "riinr";
  inputs."manu-v2_2_0".repo = "flake-nimble";
  inputs."manu-v2_2_0".ref = "flake-pinning";
  inputs."manu-v2_2_0".dir = "nimpkgs/m/manu/v2_2_0";
  inputs."manu-v2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v2_2_1".type = "github";
  inputs."manu-v2_2_1".owner = "riinr";
  inputs."manu-v2_2_1".repo = "flake-nimble";
  inputs."manu-v2_2_1".ref = "flake-pinning";
  inputs."manu-v2_2_1".dir = "nimpkgs/m/manu/v2_2_1";
  inputs."manu-v2_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."manu-v2_3".type = "github";
  inputs."manu-v2_3".owner = "riinr";
  inputs."manu-v2_3".repo = "flake-nimble";
  inputs."manu-v2_3".ref = "flake-pinning";
  inputs."manu-v2_3".dir = "nimpkgs/m/manu/v2_3";
  inputs."manu-v2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}