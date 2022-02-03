{
  description = ''Legends of Runeterra deck/card code encoder/decoder'';
  inputs.src-runeterra_decks-v0_4_0.flake = false;
  inputs.src-runeterra_decks-v0_4_0.type = "github";
  inputs.src-runeterra_decks-v0_4_0.owner = "SolitudeSF";
  inputs.src-runeterra_decks-v0_4_0.repo = "runeterra_decks";
  inputs.src-runeterra_decks-v0_4_0.ref = "refs/tags/v0.4.0";
  
  outputs = { self, nixpkgs, src-runeterra_decks-v0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-runeterra_decks-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-runeterra_decks-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}