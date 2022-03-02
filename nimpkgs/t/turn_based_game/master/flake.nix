{
  description = ''Game rules engine for simulating or playing turn-based games'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-turn_based_game-master.flake = false;
  inputs.src-turn_based_game-master.type = "github";
  inputs.src-turn_based_game-master.owner = "JohnAD";
  inputs.src-turn_based_game-master.repo = "turn_based_game";
  inputs.src-turn_based_game-master.ref = "refs/heads/master";
  inputs.src-turn_based_game-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-turn_based_game-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-turn_based_game-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-turn_based_game-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}