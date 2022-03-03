{
  description = ''A simple 2D game engine for Nim language. Deprecated, use nimgame2 instead.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimgame-master".type = "github";
  inputs."nimgame-master".owner = "riinr";
  inputs."nimgame-master".repo = "flake-nimble";
  inputs."nimgame-master".ref = "flake-pinning";
  inputs."nimgame-master".dir = "nimpkgs/n/nimgame/master";
  inputs."nimgame-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgame-v0_1".type = "github";
  inputs."nimgame-v0_1".owner = "riinr";
  inputs."nimgame-v0_1".repo = "flake-nimble";
  inputs."nimgame-v0_1".ref = "flake-pinning";
  inputs."nimgame-v0_1".dir = "nimpkgs/n/nimgame/v0_1";
  inputs."nimgame-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgame-v0_2".type = "github";
  inputs."nimgame-v0_2".owner = "riinr";
  inputs."nimgame-v0_2".repo = "flake-nimble";
  inputs."nimgame-v0_2".ref = "flake-pinning";
  inputs."nimgame-v0_2".dir = "nimpkgs/n/nimgame/v0_2";
  inputs."nimgame-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimgame-v0_3".type = "github";
  inputs."nimgame-v0_3".owner = "riinr";
  inputs."nimgame-v0_3".repo = "flake-nimble";
  inputs."nimgame-v0_3".ref = "flake-pinning";
  inputs."nimgame-v0_3".dir = "nimpkgs/n/nimgame/v0_3";
  inputs."nimgame-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}