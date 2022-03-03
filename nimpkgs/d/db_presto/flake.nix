{
  description = ''prestodb simple connector'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."db_presto-master".type = "github";
  inputs."db_presto-master".owner = "riinr";
  inputs."db_presto-master".repo = "flake-nimble";
  inputs."db_presto-master".ref = "flake-pinning";
  inputs."db_presto-master".dir = "nimpkgs/d/db_presto/master";
  inputs."db_presto-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_presto-0_5_0".type = "github";
  inputs."db_presto-0_5_0".owner = "riinr";
  inputs."db_presto-0_5_0".repo = "flake-nimble";
  inputs."db_presto-0_5_0".ref = "flake-pinning";
  inputs."db_presto-0_5_0".dir = "nimpkgs/d/db_presto/0_5_0";
  inputs."db_presto-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_presto-0_7_0".type = "github";
  inputs."db_presto-0_7_0".owner = "riinr";
  inputs."db_presto-0_7_0".repo = "flake-nimble";
  inputs."db_presto-0_7_0".ref = "flake-pinning";
  inputs."db_presto-0_7_0".dir = "nimpkgs/d/db_presto/0_7_0";
  inputs."db_presto-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_presto-0_8_0".type = "github";
  inputs."db_presto-0_8_0".owner = "riinr";
  inputs."db_presto-0_8_0".repo = "flake-nimble";
  inputs."db_presto-0_8_0".ref = "flake-pinning";
  inputs."db_presto-0_8_0".dir = "nimpkgs/d/db_presto/0_8_0";
  inputs."db_presto-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_presto-0_9_1".type = "github";
  inputs."db_presto-0_9_1".owner = "riinr";
  inputs."db_presto-0_9_1".repo = "flake-nimble";
  inputs."db_presto-0_9_1".ref = "flake-pinning";
  inputs."db_presto-0_9_1".dir = "nimpkgs/d/db_presto/0_9_1";
  inputs."db_presto-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_presto-0_9_5".type = "github";
  inputs."db_presto-0_9_5".owner = "riinr";
  inputs."db_presto-0_9_5".repo = "flake-nimble";
  inputs."db_presto-0_9_5".ref = "flake-pinning";
  inputs."db_presto-0_9_5".dir = "nimpkgs/d/db_presto/0_9_5";
  inputs."db_presto-0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_presto-0_9_8".type = "github";
  inputs."db_presto-0_9_8".owner = "riinr";
  inputs."db_presto-0_9_8".repo = "flake-nimble";
  inputs."db_presto-0_9_8".ref = "flake-pinning";
  inputs."db_presto-0_9_8".dir = "nimpkgs/d/db_presto/0_9_8";
  inputs."db_presto-0_9_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_presto-0_9_9".type = "github";
  inputs."db_presto-0_9_9".owner = "riinr";
  inputs."db_presto-0_9_9".repo = "flake-nimble";
  inputs."db_presto-0_9_9".ref = "flake-pinning";
  inputs."db_presto-0_9_9".dir = "nimpkgs/d/db_presto/0_9_9";
  inputs."db_presto-0_9_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_presto-0_9_91".type = "github";
  inputs."db_presto-0_9_91".owner = "riinr";
  inputs."db_presto-0_9_91".repo = "flake-nimble";
  inputs."db_presto-0_9_91".ref = "flake-pinning";
  inputs."db_presto-0_9_91".dir = "nimpkgs/d/db_presto/0_9_91";
  inputs."db_presto-0_9_91".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-0_9_91".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_presto-1_0_1".type = "github";
  inputs."db_presto-1_0_1".owner = "riinr";
  inputs."db_presto-1_0_1".repo = "flake-nimble";
  inputs."db_presto-1_0_1".ref = "flake-pinning";
  inputs."db_presto-1_0_1".dir = "nimpkgs/d/db_presto/1_0_1";
  inputs."db_presto-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_presto-1_0_11".type = "github";
  inputs."db_presto-1_0_11".owner = "riinr";
  inputs."db_presto-1_0_11".repo = "flake-nimble";
  inputs."db_presto-1_0_11".ref = "flake-pinning";
  inputs."db_presto-1_0_11".dir = "nimpkgs/d/db_presto/1_0_11";
  inputs."db_presto-1_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-1_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."db_presto-1_1_0".type = "github";
  inputs."db_presto-1_1_0".owner = "riinr";
  inputs."db_presto-1_1_0".repo = "flake-nimble";
  inputs."db_presto-1_1_0".ref = "flake-pinning";
  inputs."db_presto-1_1_0".dir = "nimpkgs/d/db_presto/1_1_0";
  inputs."db_presto-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_presto-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}