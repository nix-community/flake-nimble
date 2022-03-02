{
  description = ''Game rules engine for simulating or playing turn-based games'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-turn_based_game-v1_1_4.flake = false;
  inputs.src-turn_based_game-v1_1_4.type = "github";
  inputs.src-turn_based_game-v1_1_4.owner = "JohnAD";
  inputs.src-turn_based_game-v1_1_4.repo = "turn_based_game";
  inputs.src-turn_based_game-v1_1_4.ref = "refs/tags/v1.1.4";
  inputs.src-turn_based_game-v1_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-turn_based_game-v1_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-turn_based_game-v1_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-turn_based_game-v1_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}