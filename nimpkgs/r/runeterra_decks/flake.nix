{
  description = ''
    Legends of Runeterra deck/card code encoder/decoder
  '';
  inputs.src-runeterra_decks.url = "https://github.com/SolitudeSF/runeterra_decks";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
