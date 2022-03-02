{
  description = ''Client and server database and networking utils'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."wavecore-master".type = "github";
  inputs."wavecore-master".owner = "riinr";
  inputs."wavecore-master".repo = "flake-nimble";
  inputs."wavecore-master".ref = "flake-pinning";
  inputs."wavecore-master".dir = "nimpkgs/w/wavecore/master";
  inputs."wavecore-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_1_0".type = "github";
  inputs."wavecore-0_1_0".owner = "riinr";
  inputs."wavecore-0_1_0".repo = "flake-nimble";
  inputs."wavecore-0_1_0".ref = "flake-pinning";
  inputs."wavecore-0_1_0".dir = "nimpkgs/w/wavecore/0_1_0";
  inputs."wavecore-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_1_1".type = "github";
  inputs."wavecore-0_1_1".owner = "riinr";
  inputs."wavecore-0_1_1".repo = "flake-nimble";
  inputs."wavecore-0_1_1".ref = "flake-pinning";
  inputs."wavecore-0_1_1".dir = "nimpkgs/w/wavecore/0_1_1";
  inputs."wavecore-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_2_0".type = "github";
  inputs."wavecore-0_2_0".owner = "riinr";
  inputs."wavecore-0_2_0".repo = "flake-nimble";
  inputs."wavecore-0_2_0".ref = "flake-pinning";
  inputs."wavecore-0_2_0".dir = "nimpkgs/w/wavecore/0_2_0";
  inputs."wavecore-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_2_1".type = "github";
  inputs."wavecore-0_2_1".owner = "riinr";
  inputs."wavecore-0_2_1".repo = "flake-nimble";
  inputs."wavecore-0_2_1".ref = "flake-pinning";
  inputs."wavecore-0_2_1".dir = "nimpkgs/w/wavecore/0_2_1";
  inputs."wavecore-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_2_2".type = "github";
  inputs."wavecore-0_2_2".owner = "riinr";
  inputs."wavecore-0_2_2".repo = "flake-nimble";
  inputs."wavecore-0_2_2".ref = "flake-pinning";
  inputs."wavecore-0_2_2".dir = "nimpkgs/w/wavecore/0_2_2";
  inputs."wavecore-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_2_3".type = "github";
  inputs."wavecore-0_2_3".owner = "riinr";
  inputs."wavecore-0_2_3".repo = "flake-nimble";
  inputs."wavecore-0_2_3".ref = "flake-pinning";
  inputs."wavecore-0_2_3".dir = "nimpkgs/w/wavecore/0_2_3";
  inputs."wavecore-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_3_0".type = "github";
  inputs."wavecore-0_3_0".owner = "riinr";
  inputs."wavecore-0_3_0".repo = "flake-nimble";
  inputs."wavecore-0_3_0".ref = "flake-pinning";
  inputs."wavecore-0_3_0".dir = "nimpkgs/w/wavecore/0_3_0";
  inputs."wavecore-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_3_1".type = "github";
  inputs."wavecore-0_3_1".owner = "riinr";
  inputs."wavecore-0_3_1".repo = "flake-nimble";
  inputs."wavecore-0_3_1".ref = "flake-pinning";
  inputs."wavecore-0_3_1".dir = "nimpkgs/w/wavecore/0_3_1";
  inputs."wavecore-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_3_2".type = "github";
  inputs."wavecore-0_3_2".owner = "riinr";
  inputs."wavecore-0_3_2".repo = "flake-nimble";
  inputs."wavecore-0_3_2".ref = "flake-pinning";
  inputs."wavecore-0_3_2".dir = "nimpkgs/w/wavecore/0_3_2";
  inputs."wavecore-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_3_3".type = "github";
  inputs."wavecore-0_3_3".owner = "riinr";
  inputs."wavecore-0_3_3".repo = "flake-nimble";
  inputs."wavecore-0_3_3".ref = "flake-pinning";
  inputs."wavecore-0_3_3".dir = "nimpkgs/w/wavecore/0_3_3";
  inputs."wavecore-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_3_4".type = "github";
  inputs."wavecore-0_3_4".owner = "riinr";
  inputs."wavecore-0_3_4".repo = "flake-nimble";
  inputs."wavecore-0_3_4".ref = "flake-pinning";
  inputs."wavecore-0_3_4".dir = "nimpkgs/w/wavecore/0_3_4";
  inputs."wavecore-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_3_5".type = "github";
  inputs."wavecore-0_3_5".owner = "riinr";
  inputs."wavecore-0_3_5".repo = "flake-nimble";
  inputs."wavecore-0_3_5".ref = "flake-pinning";
  inputs."wavecore-0_3_5".dir = "nimpkgs/w/wavecore/0_3_5";
  inputs."wavecore-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_3_6".type = "github";
  inputs."wavecore-0_3_6".owner = "riinr";
  inputs."wavecore-0_3_6".repo = "flake-nimble";
  inputs."wavecore-0_3_6".ref = "flake-pinning";
  inputs."wavecore-0_3_6".dir = "nimpkgs/w/wavecore/0_3_6";
  inputs."wavecore-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_3_7".type = "github";
  inputs."wavecore-0_3_7".owner = "riinr";
  inputs."wavecore-0_3_7".repo = "flake-nimble";
  inputs."wavecore-0_3_7".ref = "flake-pinning";
  inputs."wavecore-0_3_7".dir = "nimpkgs/w/wavecore/0_3_7";
  inputs."wavecore-0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_4_0".type = "github";
  inputs."wavecore-0_4_0".owner = "riinr";
  inputs."wavecore-0_4_0".repo = "flake-nimble";
  inputs."wavecore-0_4_0".ref = "flake-pinning";
  inputs."wavecore-0_4_0".dir = "nimpkgs/w/wavecore/0_4_0";
  inputs."wavecore-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_4_1".type = "github";
  inputs."wavecore-0_4_1".owner = "riinr";
  inputs."wavecore-0_4_1".repo = "flake-nimble";
  inputs."wavecore-0_4_1".ref = "flake-pinning";
  inputs."wavecore-0_4_1".dir = "nimpkgs/w/wavecore/0_4_1";
  inputs."wavecore-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_4_2".type = "github";
  inputs."wavecore-0_4_2".owner = "riinr";
  inputs."wavecore-0_4_2".repo = "flake-nimble";
  inputs."wavecore-0_4_2".ref = "flake-pinning";
  inputs."wavecore-0_4_2".dir = "nimpkgs/w/wavecore/0_4_2";
  inputs."wavecore-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_4_3".type = "github";
  inputs."wavecore-0_4_3".owner = "riinr";
  inputs."wavecore-0_4_3".repo = "flake-nimble";
  inputs."wavecore-0_4_3".ref = "flake-pinning";
  inputs."wavecore-0_4_3".dir = "nimpkgs/w/wavecore/0_4_3";
  inputs."wavecore-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."wavecore-0_5_0".type = "github";
  inputs."wavecore-0_5_0".owner = "riinr";
  inputs."wavecore-0_5_0".repo = "flake-nimble";
  inputs."wavecore-0_5_0".ref = "flake-pinning";
  inputs."wavecore-0_5_0".dir = "nimpkgs/w/wavecore/0_5_0";
  inputs."wavecore-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}