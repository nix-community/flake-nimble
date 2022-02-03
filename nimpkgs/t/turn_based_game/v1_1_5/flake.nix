{
  description = ''Game rules engine for simulating or playing turn-based games'';
  inputs.src-turn_based_game-v1_1_5.flake = false;
  inputs.src-turn_based_game-v1_1_5.type = "github";
  inputs.src-turn_based_game-v1_1_5.owner = "JohnAD";
  inputs.src-turn_based_game-v1_1_5.repo = "turn_based_game";
  inputs.src-turn_based_game-v1_1_5.ref = "refs/tags/v1.1.5";
  
  outputs = { self, nixpkgs, src-turn_based_game-v1_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-turn_based_game-v1_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-turn_based_game-v1_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}