{
  description = ''Legends of Runeterra deck/card code encoder/decoder'';
  inputs.src-runeterra_decks-v0_2_2.flake = false;
  inputs.src-runeterra_decks-v0_2_2.type = "github";
  inputs.src-runeterra_decks-v0_2_2.owner = "SolitudeSF";
  inputs.src-runeterra_decks-v0_2_2.repo = "runeterra_decks";
  inputs.src-runeterra_decks-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."base32".url = "path:../../../b/base32";
  inputs."base32".type = "github";
  inputs."base32".owner = "riinr";
  inputs."base32".repo = "flake-nimble";
  inputs."base32".ref = "flake-pinning";
  inputs."base32".dir = "nimpkgs/b/base32";

  outputs = { self, nixpkgs, src-runeterra_decks-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-runeterra_decks-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-runeterra_decks-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}