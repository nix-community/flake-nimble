{
  description = ''Game rules engine for simulating or playing turn-based games'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-turn_based_game-v1_1_6.flake = false;
  inputs.src-turn_based_game-v1_1_6.type = "github";
  inputs.src-turn_based_game-v1_1_6.owner = "JohnAD";
  inputs.src-turn_based_game-v1_1_6.repo = "turn_based_game";
  inputs.src-turn_based_game-v1_1_6.ref = "refs/tags/v1.1.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-turn_based_game-v1_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-turn_based_game-v1_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-turn_based_game-v1_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}