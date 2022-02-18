{
  description = ''Game rules engine for simulating or playing turn-based games'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."turn_based_game-master".type = "github";
  inputs."turn_based_game-master".owner = "riinr";
  inputs."turn_based_game-master".repo = "flake-nimble";
  inputs."turn_based_game-master".ref = "flake-pinning";
  inputs."turn_based_game-master".dir = "nimpkgs/t/turn_based_game/master";

    inputs."turn_based_game-v0_9_0".type = "github";
  inputs."turn_based_game-v0_9_0".owner = "riinr";
  inputs."turn_based_game-v0_9_0".repo = "flake-nimble";
  inputs."turn_based_game-v0_9_0".ref = "flake-pinning";
  inputs."turn_based_game-v0_9_0".dir = "nimpkgs/t/turn_based_game/v0_9_0";

    inputs."turn_based_game-v1_0_0".type = "github";
  inputs."turn_based_game-v1_0_0".owner = "riinr";
  inputs."turn_based_game-v1_0_0".repo = "flake-nimble";
  inputs."turn_based_game-v1_0_0".ref = "flake-pinning";
  inputs."turn_based_game-v1_0_0".dir = "nimpkgs/t/turn_based_game/v1_0_0";

    inputs."turn_based_game-v1_0_1".type = "github";
  inputs."turn_based_game-v1_0_1".owner = "riinr";
  inputs."turn_based_game-v1_0_1".repo = "flake-nimble";
  inputs."turn_based_game-v1_0_1".ref = "flake-pinning";
  inputs."turn_based_game-v1_0_1".dir = "nimpkgs/t/turn_based_game/v1_0_1";

    inputs."turn_based_game-v1_1_0".type = "github";
  inputs."turn_based_game-v1_1_0".owner = "riinr";
  inputs."turn_based_game-v1_1_0".repo = "flake-nimble";
  inputs."turn_based_game-v1_1_0".ref = "flake-pinning";
  inputs."turn_based_game-v1_1_0".dir = "nimpkgs/t/turn_based_game/v1_1_0";

    inputs."turn_based_game-v1_1_1".type = "github";
  inputs."turn_based_game-v1_1_1".owner = "riinr";
  inputs."turn_based_game-v1_1_1".repo = "flake-nimble";
  inputs."turn_based_game-v1_1_1".ref = "flake-pinning";
  inputs."turn_based_game-v1_1_1".dir = "nimpkgs/t/turn_based_game/v1_1_1";

    inputs."turn_based_game-v1_1_2".type = "github";
  inputs."turn_based_game-v1_1_2".owner = "riinr";
  inputs."turn_based_game-v1_1_2".repo = "flake-nimble";
  inputs."turn_based_game-v1_1_2".ref = "flake-pinning";
  inputs."turn_based_game-v1_1_2".dir = "nimpkgs/t/turn_based_game/v1_1_2";

    inputs."turn_based_game-v1_1_3".type = "github";
  inputs."turn_based_game-v1_1_3".owner = "riinr";
  inputs."turn_based_game-v1_1_3".repo = "flake-nimble";
  inputs."turn_based_game-v1_1_3".ref = "flake-pinning";
  inputs."turn_based_game-v1_1_3".dir = "nimpkgs/t/turn_based_game/v1_1_3";

    inputs."turn_based_game-v1_1_4".type = "github";
  inputs."turn_based_game-v1_1_4".owner = "riinr";
  inputs."turn_based_game-v1_1_4".repo = "flake-nimble";
  inputs."turn_based_game-v1_1_4".ref = "flake-pinning";
  inputs."turn_based_game-v1_1_4".dir = "nimpkgs/t/turn_based_game/v1_1_4";

    inputs."turn_based_game-v1_1_5".type = "github";
  inputs."turn_based_game-v1_1_5".owner = "riinr";
  inputs."turn_based_game-v1_1_5".repo = "flake-nimble";
  inputs."turn_based_game-v1_1_5".ref = "flake-pinning";
  inputs."turn_based_game-v1_1_5".dir = "nimpkgs/t/turn_based_game/v1_1_5";

    inputs."turn_based_game-v1_1_6".type = "github";
  inputs."turn_based_game-v1_1_6".owner = "riinr";
  inputs."turn_based_game-v1_1_6".repo = "flake-nimble";
  inputs."turn_based_game-v1_1_6".ref = "flake-pinning";
  inputs."turn_based_game-v1_1_6".dir = "nimpkgs/t/turn_based_game/v1_1_6";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}