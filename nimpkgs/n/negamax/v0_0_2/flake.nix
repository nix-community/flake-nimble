{
  description = ''Negamax AI search-tree algorithm for two player games'';
  inputs.src-negamax-v0_0_2.flake = false;
  inputs.src-negamax-v0_0_2.type = "github";
  inputs.src-negamax-v0_0_2.owner = "JohnAD";
  inputs.src-negamax-v0_0_2.repo = "negamax";
  inputs.src-negamax-v0_0_2.ref = "refs/tags/v0.0.2";
  
  
  inputs."turn_based_game".type = "github";
  inputs."turn_based_game".owner = "riinr";
  inputs."turn_based_game".repo = "flake-nimble";
  inputs."turn_based_game".ref = "flake-pinning";
  inputs."turn_based_game".dir = "nimpkgs/t/turn_based_game";

  outputs = { self, nixpkgs, src-negamax-v0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-negamax-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-negamax-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}