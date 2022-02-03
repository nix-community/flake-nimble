{
  description = ''Game rules engine for simulating or playing turn-based games'';
  inputs."turn_based_game-master".url = "path:./master";
  inputs."turn_based_game-v0_9_0".url = "path:./v0_9_0";
  inputs."turn_based_game-v1_0_0".url = "path:./v1_0_0";
  inputs."turn_based_game-v1_0_1".url = "path:./v1_0_1";
  inputs."turn_based_game-v1_1_0".url = "path:./v1_1_0";
  inputs."turn_based_game-v1_1_1".url = "path:./v1_1_1";
  inputs."turn_based_game-v1_1_2".url = "path:./v1_1_2";
  inputs."turn_based_game-v1_1_3".url = "path:./v1_1_3";
  inputs."turn_based_game-v1_1_4".url = "path:./v1_1_4";
  inputs."turn_based_game-v1_1_5".url = "path:./v1_1_5";
  inputs."turn_based_game-v1_1_6".url = "path:./v1_1_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}