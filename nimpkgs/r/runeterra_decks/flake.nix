{
  description = ''Legends of Runeterra deck/card code encoder/decoder'';
  inputs."runeterra_decks-master".url = "path:./master";
  inputs."runeterra_decks-v0_1_0".url = "path:./v0_1_0";
  inputs."runeterra_decks-v0_2_0".url = "path:./v0_2_0";
  inputs."runeterra_decks-v0_2_1".url = "path:./v0_2_1";
  inputs."runeterra_decks-v0_2_2".url = "path:./v0_2_2";
  inputs."runeterra_decks-v0_2_3".url = "path:./v0_2_3";
  inputs."runeterra_decks-v0_4_0".url = "path:./v0_4_0";
  inputs."runeterra_decks-v0_5_0".url = "path:./v0_5_0";
  inputs."runeterra_decks-v0_5_1".url = "path:./v0_5_1";
  inputs."runeterra_decks-v0_6_0".url = "path:./v0_6_0";
  inputs."runeterra_decks-v0_6_1".url = "path:./v0_6_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}