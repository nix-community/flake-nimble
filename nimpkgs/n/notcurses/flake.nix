{
  description = ''
    A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics
  '';
  inputs.src-notcurses.url = "https://github.com/michaelsbradleyjr/nim-notcurses";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
