{
  description = ''Game rules engine for simulating or playing turn-based games'';
  inputs.src-turn_based_game-v1_1_4.flake = false;
  inputs.src-turn_based_game-v1_1_4.type = "github";
  inputs.src-turn_based_game-v1_1_4.owner = "JohnAD";
  inputs.src-turn_based_game-v1_1_4.repo = "turn_based_game";
  inputs.src-turn_based_game-v1_1_4.ref = "refs/tags/v1.1.4";
  
  outputs = { self, nixpkgs, src-turn_based_game-v1_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-turn_based_game-v1_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-turn_based_game-v1_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}