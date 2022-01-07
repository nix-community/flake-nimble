{
  description = ''
    Negamax AI search-tree algorithm for two player games
  '';
  inputs.src-negamax.url = "https://github.com/JohnAD/negamax";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
