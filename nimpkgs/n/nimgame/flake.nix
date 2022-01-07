{
  description = ''
    A simple 2D game engine for Nim language. Deprecated, use nimgame2 instead.
  '';
  inputs.src-nimgame.url = "https://github.com/Vladar4/nimgame/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
