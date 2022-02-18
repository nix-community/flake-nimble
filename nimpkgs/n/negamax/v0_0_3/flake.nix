{
  description = ''Negamax AI search-tree algorithm for two player games'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-negamax-v0_0_3.flake = false;
  inputs.src-negamax-v0_0_3.type = "github";
  inputs.src-negamax-v0_0_3.owner = "JohnAD";
  inputs.src-negamax-v0_0_3.repo = "negamax";
  inputs.src-negamax-v0_0_3.ref = "refs/tags/v0.0.3";
  
  
  inputs."turn_based_game".type = "github";
  inputs."turn_based_game".owner = "riinr";
  inputs."turn_based_game".repo = "flake-nimble";
  inputs."turn_based_game".ref = "flake-pinning";
  inputs."turn_based_game".dir = "nimpkgs/t/turn_based_game";

  outputs = { self, nixpkgs, flakeNimbleLib, src-negamax-v0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-negamax-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-negamax-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}