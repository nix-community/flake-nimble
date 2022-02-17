{
  description = ''Legends of Runeterra deck/card code encoder/decoder'';
  inputs.src-runeterra_decks-master.flake = false;
  inputs.src-runeterra_decks-master.type = "github";
  inputs.src-runeterra_decks-master.owner = "SolitudeSF";
  inputs.src-runeterra_decks-master.repo = "runeterra_decks";
  inputs.src-runeterra_decks-master.ref = "refs/heads/master";
  
  
  inputs."base32".type = "github";
  inputs."base32".owner = "riinr";
  inputs."base32".repo = "flake-nimble";
  inputs."base32".ref = "flake-pinning";
  inputs."base32".dir = "nimpkgs/b/base32";

  outputs = { self, nixpkgs, src-runeterra_decks-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-runeterra_decks-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-runeterra_decks-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}