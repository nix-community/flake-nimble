{
  description = ''
    A wrapper for NCurses
  '';
  inputs.src-ncurses.url = "https://github.com/walkre-niboshi/nim-ncurses";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
