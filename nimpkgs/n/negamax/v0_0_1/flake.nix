{
  description = ''Negamax AI search-tree algorithm for two player games'';
  inputs.src-negamax-v0_0_1.flake = false;
  inputs.src-negamax-v0_0_1.type = "github";
  inputs.src-negamax-v0_0_1.owner = "JohnAD";
  inputs.src-negamax-v0_0_1.repo = "negamax";
  inputs.src-negamax-v0_0_1.ref = "refs/tags/v0.0.1";
  
  
  inputs."turn_based_game".url = "path:../../../t/turn_based_game";
  inputs."turn_based_game".type = "github";
  inputs."turn_based_game".owner = "riinr";
  inputs."turn_based_game".repo = "flake-nimble";
  inputs."turn_based_game".ref = "flake-pinning";
  inputs."turn_based_game".dir = "nimpkgs/t/turn_based_game";

  outputs = { self, nixpkgs, src-negamax-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-negamax-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-negamax-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}