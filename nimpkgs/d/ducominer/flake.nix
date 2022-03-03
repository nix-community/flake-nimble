{
  description = ''A fast, multithreaded miner for DuinoCoin'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ducominer-main".type = "github";
  inputs."ducominer-main".owner = "riinr";
  inputs."ducominer-main".repo = "flake-nimble";
  inputs."ducominer-main".ref = "flake-pinning";
  inputs."ducominer-main".dir = "nimpkgs/d/ducominer/main";
  inputs."ducominer-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ducominer-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ducominer-1_0_0".type = "github";
  inputs."ducominer-1_0_0".owner = "riinr";
  inputs."ducominer-1_0_0".repo = "flake-nimble";
  inputs."ducominer-1_0_0".ref = "flake-pinning";
  inputs."ducominer-1_0_0".dir = "nimpkgs/d/ducominer/1_0_0";
  inputs."ducominer-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ducominer-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ducominer-1_0_1".type = "github";
  inputs."ducominer-1_0_1".owner = "riinr";
  inputs."ducominer-1_0_1".repo = "flake-nimble";
  inputs."ducominer-1_0_1".ref = "flake-pinning";
  inputs."ducominer-1_0_1".dir = "nimpkgs/d/ducominer/1_0_1";
  inputs."ducominer-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ducominer-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ducominer-1_1_0".type = "github";
  inputs."ducominer-1_1_0".owner = "riinr";
  inputs."ducominer-1_1_0".repo = "flake-nimble";
  inputs."ducominer-1_1_0".ref = "flake-pinning";
  inputs."ducominer-1_1_0".dir = "nimpkgs/d/ducominer/1_1_0";
  inputs."ducominer-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ducominer-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."ducominer-1_2_0".type = "github";
  inputs."ducominer-1_2_0".owner = "riinr";
  inputs."ducominer-1_2_0".repo = "flake-nimble";
  inputs."ducominer-1_2_0".ref = "flake-pinning";
  inputs."ducominer-1_2_0".dir = "nimpkgs/d/ducominer/1_2_0";
  inputs."ducominer-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ducominer-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}