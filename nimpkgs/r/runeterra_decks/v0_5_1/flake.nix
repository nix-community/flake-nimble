{
  description = ''Legends of Runeterra deck/card code encoder/decoder'';
  inputs.src-runeterra_decks-v0_5_1.flake = false;
  inputs.src-runeterra_decks-v0_5_1.type = "github";
  inputs.src-runeterra_decks-v0_5_1.owner = "SolitudeSF";
  inputs.src-runeterra_decks-v0_5_1.repo = "runeterra_decks";
  inputs.src-runeterra_decks-v0_5_1.ref = "refs/tags/v0.5.1";
  
  
  inputs."base32".type = "github";
  inputs."base32".owner = "riinr";
  inputs."base32".repo = "flake-nimble";
  inputs."base32".ref = "flake-pinning";
  inputs."base32".dir = "nimpkgs/b/base32";

  outputs = { self, nixpkgs, src-runeterra_decks-v0_5_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-runeterra_decks-v0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-runeterra_decks-v0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}