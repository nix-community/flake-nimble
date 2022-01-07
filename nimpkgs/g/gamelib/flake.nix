{
  description = ''
    A library of functions to make creating games using Nim and SDL2 easier. This does not intend to be a full blown engine and tries to keep all the components loosely coupled so that individual parts can be used separately.
  '';
  inputs.src-gamelib.url = "https://github.com/PMunch/SDLGamelib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
