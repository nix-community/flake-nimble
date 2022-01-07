{
  description = ''
    Nim wrapper for PDCurses
  '';
  inputs.src-pdcurses.url = "https://github.com/lcrees/pdcurses";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
