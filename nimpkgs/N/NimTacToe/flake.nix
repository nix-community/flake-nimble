{
  description = ''
    A new awesome nimble package
  '';
  inputs.src-NimTacToe.url = "https://github.com/JesterOrNot/Nim-Tac-Toe";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
