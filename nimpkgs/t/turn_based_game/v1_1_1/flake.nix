{
  description = ''Game rules engine for simulating or playing turn-based games'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-turn_based_game-v1_1_1.flake = false;
  inputs.src-turn_based_game-v1_1_1.type = "github";
  inputs.src-turn_based_game-v1_1_1.owner = "JohnAD";
  inputs.src-turn_based_game-v1_1_1.repo = "turn_based_game";
  inputs.src-turn_based_game-v1_1_1.ref = "refs/tags/v1.1.1";
  inputs.src-turn_based_game-v1_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-turn_based_game-v1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-turn_based_game-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-turn_based_game-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}