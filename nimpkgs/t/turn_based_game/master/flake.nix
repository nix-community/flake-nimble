{
  description = ''Game rules engine for simulating or playing turn-based games'';
  inputs.src-turn_based_game-master.flake = false;
  inputs.src-turn_based_game-master.type = "github";
  inputs.src-turn_based_game-master.owner = "JohnAD";
  inputs.src-turn_based_game-master.repo = "turn_based_game";
  inputs.src-turn_based_game-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-turn_based_game-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-turn_based_game-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-turn_based_game-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}