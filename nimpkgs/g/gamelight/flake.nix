{
  description = ''
    A set of simple modules for writing a JavaScript 2D game.
  '';
  inputs.src-gamelight.url = "https://github.com/dom96/gamelight";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
