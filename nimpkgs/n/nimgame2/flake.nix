{
  description = ''
    A simple 2D game engine for Nim language.
  '';
  inputs.src-nimgame2.url = "https://github.com/Vladar4/nimgame2/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
