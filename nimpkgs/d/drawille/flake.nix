{
  description = ''
    Drawing in terminal with Unicode Braille characters.
  '';
  inputs.src-drawille.url = "https://github.com/PMunch/drawille-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
