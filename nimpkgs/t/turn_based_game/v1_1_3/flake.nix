{
  description = ''Game rules engine for simulating or playing turn-based games'';
  inputs.src-turn_based_game-v1_1_3.flake = false;
  inputs.src-turn_based_game-v1_1_3.type = "github";
  inputs.src-turn_based_game-v1_1_3.owner = "JohnAD";
  inputs.src-turn_based_game-v1_1_3.repo = "turn_based_game";
  inputs.src-turn_based_game-v1_1_3.ref = "refs/tags/v1.1.3";
  
  outputs = { self, nixpkgs, src-turn_based_game-v1_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-turn_based_game-v1_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-turn_based_game-v1_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}