{
  description = ''
    Wrapper for Allegro version 5.X
  '';
  inputs.src-allegro5.url = "https://github.com/fowlmouth/allegro5";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
