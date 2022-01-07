{
  description = ''
    Game rules engine for simulating or playing turn-based games
  '';
  inputs.src-turn_based_game.url = "https://github.com/JohnAD/turn_based_game";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
