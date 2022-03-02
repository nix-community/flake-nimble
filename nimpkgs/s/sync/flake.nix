{
  description = ''Useful synchronization primitives'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sync-master".type = "github";
  inputs."sync-master".owner = "riinr";
  inputs."sync-master".repo = "flake-nimble";
  inputs."sync-master".ref = "flake-pinning";
  inputs."sync-master".dir = "nimpkgs/s/sync/master";
  inputs."sync-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v0_1_0".type = "github";
  inputs."sync-v0_1_0".owner = "riinr";
  inputs."sync-v0_1_0".repo = "flake-nimble";
  inputs."sync-v0_1_0".ref = "flake-pinning";
  inputs."sync-v0_1_0".dir = "nimpkgs/s/sync/v0_1_0";
  inputs."sync-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v0_2_0".type = "github";
  inputs."sync-v0_2_0".owner = "riinr";
  inputs."sync-v0_2_0".repo = "flake-nimble";
  inputs."sync-v0_2_0".ref = "flake-pinning";
  inputs."sync-v0_2_0".dir = "nimpkgs/s/sync/v0_2_0";
  inputs."sync-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v0_3_0".type = "github";
  inputs."sync-v0_3_0".owner = "riinr";
  inputs."sync-v0_3_0".repo = "flake-nimble";
  inputs."sync-v0_3_0".ref = "flake-pinning";
  inputs."sync-v0_3_0".dir = "nimpkgs/s/sync/v0_3_0";
  inputs."sync-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v0_4_0".type = "github";
  inputs."sync-v0_4_0".owner = "riinr";
  inputs."sync-v0_4_0".repo = "flake-nimble";
  inputs."sync-v0_4_0".ref = "flake-pinning";
  inputs."sync-v0_4_0".dir = "nimpkgs/s/sync/v0_4_0";
  inputs."sync-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v0_5_0".type = "github";
  inputs."sync-v0_5_0".owner = "riinr";
  inputs."sync-v0_5_0".repo = "flake-nimble";
  inputs."sync-v0_5_0".ref = "flake-pinning";
  inputs."sync-v0_5_0".dir = "nimpkgs/s/sync/v0_5_0";
  inputs."sync-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v0_6_0".type = "github";
  inputs."sync-v0_6_0".owner = "riinr";
  inputs."sync-v0_6_0".repo = "flake-nimble";
  inputs."sync-v0_6_0".ref = "flake-pinning";
  inputs."sync-v0_6_0".dir = "nimpkgs/s/sync/v0_6_0";
  inputs."sync-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v0_7_0".type = "github";
  inputs."sync-v0_7_0".owner = "riinr";
  inputs."sync-v0_7_0".repo = "flake-nimble";
  inputs."sync-v0_7_0".ref = "flake-pinning";
  inputs."sync-v0_7_0".dir = "nimpkgs/s/sync/v0_7_0";
  inputs."sync-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v0_9_0".type = "github";
  inputs."sync-v0_9_0".owner = "riinr";
  inputs."sync-v0_9_0".repo = "flake-nimble";
  inputs."sync-v0_9_0".ref = "flake-pinning";
  inputs."sync-v0_9_0".dir = "nimpkgs/s/sync/v0_9_0";
  inputs."sync-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v1_0_0".type = "github";
  inputs."sync-v1_0_0".owner = "riinr";
  inputs."sync-v1_0_0".repo = "flake-nimble";
  inputs."sync-v1_0_0".ref = "flake-pinning";
  inputs."sync-v1_0_0".dir = "nimpkgs/s/sync/v1_0_0";
  inputs."sync-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v1_1_0".type = "github";
  inputs."sync-v1_1_0".owner = "riinr";
  inputs."sync-v1_1_0".repo = "flake-nimble";
  inputs."sync-v1_1_0".ref = "flake-pinning";
  inputs."sync-v1_1_0".dir = "nimpkgs/s/sync/v1_1_0";
  inputs."sync-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v1_2_0".type = "github";
  inputs."sync-v1_2_0".owner = "riinr";
  inputs."sync-v1_2_0".repo = "flake-nimble";
  inputs."sync-v1_2_0".ref = "flake-pinning";
  inputs."sync-v1_2_0".dir = "nimpkgs/s/sync/v1_2_0";
  inputs."sync-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v1_3_0".type = "github";
  inputs."sync-v1_3_0".owner = "riinr";
  inputs."sync-v1_3_0".repo = "flake-nimble";
  inputs."sync-v1_3_0".ref = "flake-pinning";
  inputs."sync-v1_3_0".dir = "nimpkgs/s/sync/v1_3_0";
  inputs."sync-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v1_4_0".type = "github";
  inputs."sync-v1_4_0".owner = "riinr";
  inputs."sync-v1_4_0".repo = "flake-nimble";
  inputs."sync-v1_4_0".ref = "flake-pinning";
  inputs."sync-v1_4_0".dir = "nimpkgs/s/sync/v1_4_0";
  inputs."sync-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sync-v1_5_0".type = "github";
  inputs."sync-v1_5_0".owner = "riinr";
  inputs."sync-v1_5_0".repo = "flake-nimble";
  inputs."sync-v1_5_0".ref = "flake-pinning";
  inputs."sync-v1_5_0".dir = "nimpkgs/s/sync/v1_5_0";
  inputs."sync-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}