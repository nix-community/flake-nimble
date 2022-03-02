{
  description = ''OAuth library for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."oauth-develop".type = "github";
  inputs."oauth-develop".owner = "riinr";
  inputs."oauth-develop".repo = "flake-nimble";
  inputs."oauth-develop".ref = "flake-pinning";
  inputs."oauth-develop".dir = "nimpkgs/o/oauth/develop";
  inputs."oauth-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oauth-master".type = "github";
  inputs."oauth-master".owner = "riinr";
  inputs."oauth-master".repo = "flake-nimble";
  inputs."oauth-master".ref = "flake-pinning";
  inputs."oauth-master".dir = "nimpkgs/o/oauth/master";
  inputs."oauth-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oauth-v0_10".type = "github";
  inputs."oauth-v0_10".owner = "riinr";
  inputs."oauth-v0_10".repo = "flake-nimble";
  inputs."oauth-v0_10".ref = "flake-pinning";
  inputs."oauth-v0_10".dir = "nimpkgs/o/oauth/v0_10";
  inputs."oauth-v0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oauth-v0_2".type = "github";
  inputs."oauth-v0_2".owner = "riinr";
  inputs."oauth-v0_2".repo = "flake-nimble";
  inputs."oauth-v0_2".ref = "flake-pinning";
  inputs."oauth-v0_2".dir = "nimpkgs/o/oauth/v0_2";
  inputs."oauth-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oauth-v0_3".type = "github";
  inputs."oauth-v0_3".owner = "riinr";
  inputs."oauth-v0_3".repo = "flake-nimble";
  inputs."oauth-v0_3".ref = "flake-pinning";
  inputs."oauth-v0_3".dir = "nimpkgs/o/oauth/v0_3";
  inputs."oauth-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oauth-v0_4".type = "github";
  inputs."oauth-v0_4".owner = "riinr";
  inputs."oauth-v0_4".repo = "flake-nimble";
  inputs."oauth-v0_4".ref = "flake-pinning";
  inputs."oauth-v0_4".dir = "nimpkgs/o/oauth/v0_4";
  inputs."oauth-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oauth-v0_4_1".type = "github";
  inputs."oauth-v0_4_1".owner = "riinr";
  inputs."oauth-v0_4_1".repo = "flake-nimble";
  inputs."oauth-v0_4_1".ref = "flake-pinning";
  inputs."oauth-v0_4_1".dir = "nimpkgs/o/oauth/v0_4_1";
  inputs."oauth-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oauth-v0_5".type = "github";
  inputs."oauth-v0_5".owner = "riinr";
  inputs."oauth-v0_5".repo = "flake-nimble";
  inputs."oauth-v0_5".ref = "flake-pinning";
  inputs."oauth-v0_5".dir = "nimpkgs/o/oauth/v0_5";
  inputs."oauth-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oauth-v0_6".type = "github";
  inputs."oauth-v0_6".owner = "riinr";
  inputs."oauth-v0_6".repo = "flake-nimble";
  inputs."oauth-v0_6".ref = "flake-pinning";
  inputs."oauth-v0_6".dir = "nimpkgs/o/oauth/v0_6";
  inputs."oauth-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oauth-v0_7".type = "github";
  inputs."oauth-v0_7".owner = "riinr";
  inputs."oauth-v0_7".repo = "flake-nimble";
  inputs."oauth-v0_7".ref = "flake-pinning";
  inputs."oauth-v0_7".dir = "nimpkgs/o/oauth/v0_7";
  inputs."oauth-v0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oauth-v0_8".type = "github";
  inputs."oauth-v0_8".owner = "riinr";
  inputs."oauth-v0_8".repo = "flake-nimble";
  inputs."oauth-v0_8".ref = "flake-pinning";
  inputs."oauth-v0_8".dir = "nimpkgs/o/oauth/v0_8";
  inputs."oauth-v0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."oauth-v0_9".type = "github";
  inputs."oauth-v0_9".owner = "riinr";
  inputs."oauth-v0_9".repo = "flake-nimble";
  inputs."oauth-v0_9".ref = "flake-pinning";
  inputs."oauth-v0_9".dir = "nimpkgs/o/oauth/v0_9";
  inputs."oauth-v0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth-v0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}