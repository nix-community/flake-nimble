{
  description = ''A command line interface for shortening URLs with ZWS instances'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."zws-main".type = "github";
  inputs."zws-main".owner = "riinr";
  inputs."zws-main".repo = "flake-nimble";
  inputs."zws-main".ref = "flake-pinning";
  inputs."zws-main".dir = "nimpkgs/z/zws/main";
  inputs."zws-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zws-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zws-v1_0_0".type = "github";
  inputs."zws-v1_0_0".owner = "riinr";
  inputs."zws-v1_0_0".repo = "flake-nimble";
  inputs."zws-v1_0_0".ref = "flake-pinning";
  inputs."zws-v1_0_0".dir = "nimpkgs/z/zws/v1_0_0";
  inputs."zws-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zws-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zws-v1_0_1".type = "github";
  inputs."zws-v1_0_1".owner = "riinr";
  inputs."zws-v1_0_1".repo = "flake-nimble";
  inputs."zws-v1_0_1".ref = "flake-pinning";
  inputs."zws-v1_0_1".dir = "nimpkgs/z/zws/v1_0_1";
  inputs."zws-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zws-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zws-v1_1_0".type = "github";
  inputs."zws-v1_1_0".owner = "riinr";
  inputs."zws-v1_1_0".repo = "flake-nimble";
  inputs."zws-v1_1_0".ref = "flake-pinning";
  inputs."zws-v1_1_0".dir = "nimpkgs/z/zws/v1_1_0";
  inputs."zws-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zws-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zws-v1_1_1".type = "github";
  inputs."zws-v1_1_1".owner = "riinr";
  inputs."zws-v1_1_1".repo = "flake-nimble";
  inputs."zws-v1_1_1".ref = "flake-pinning";
  inputs."zws-v1_1_1".dir = "nimpkgs/z/zws/v1_1_1";
  inputs."zws-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zws-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zws-v1_1_2".type = "github";
  inputs."zws-v1_1_2".owner = "riinr";
  inputs."zws-v1_1_2".repo = "flake-nimble";
  inputs."zws-v1_1_2".ref = "flake-pinning";
  inputs."zws-v1_1_2".dir = "nimpkgs/z/zws/v1_1_2";
  inputs."zws-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zws-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zws-v1_1_3".type = "github";
  inputs."zws-v1_1_3".owner = "riinr";
  inputs."zws-v1_1_3".repo = "flake-nimble";
  inputs."zws-v1_1_3".ref = "flake-pinning";
  inputs."zws-v1_1_3".dir = "nimpkgs/z/zws/v1_1_3";
  inputs."zws-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zws-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zws-v1_2_0".type = "github";
  inputs."zws-v1_2_0".owner = "riinr";
  inputs."zws-v1_2_0".repo = "flake-nimble";
  inputs."zws-v1_2_0".ref = "flake-pinning";
  inputs."zws-v1_2_0".dir = "nimpkgs/z/zws/v1_2_0";
  inputs."zws-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zws-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zws-v1_2_1".type = "github";
  inputs."zws-v1_2_1".owner = "riinr";
  inputs."zws-v1_2_1".repo = "flake-nimble";
  inputs."zws-v1_2_1".ref = "flake-pinning";
  inputs."zws-v1_2_1".dir = "nimpkgs/z/zws/v1_2_1";
  inputs."zws-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zws-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zws-v1_2_2".type = "github";
  inputs."zws-v1_2_2".owner = "riinr";
  inputs."zws-v1_2_2".repo = "flake-nimble";
  inputs."zws-v1_2_2".ref = "flake-pinning";
  inputs."zws-v1_2_2".dir = "nimpkgs/z/zws/v1_2_2";
  inputs."zws-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zws-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zws-v1_3_0".type = "github";
  inputs."zws-v1_3_0".owner = "riinr";
  inputs."zws-v1_3_0".repo = "flake-nimble";
  inputs."zws-v1_3_0".ref = "flake-pinning";
  inputs."zws-v1_3_0".dir = "nimpkgs/z/zws/v1_3_0";
  inputs."zws-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zws-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zws-v1_4_0".type = "github";
  inputs."zws-v1_4_0".owner = "riinr";
  inputs."zws-v1_4_0".repo = "flake-nimble";
  inputs."zws-v1_4_0".ref = "flake-pinning";
  inputs."zws-v1_4_0".dir = "nimpkgs/z/zws/v1_4_0";
  inputs."zws-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zws-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."zws-v1_5_0".type = "github";
  inputs."zws-v1_5_0".owner = "riinr";
  inputs."zws-v1_5_0".repo = "flake-nimble";
  inputs."zws-v1_5_0".ref = "flake-pinning";
  inputs."zws-v1_5_0".dir = "nimpkgs/z/zws/v1_5_0";
  inputs."zws-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zws-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}