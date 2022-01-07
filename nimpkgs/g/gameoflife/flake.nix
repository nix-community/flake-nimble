{
  description = ''
    gameoflife is library for Game of Life.
  '';
  inputs.src-gameoflife.url = "https://github.com/jiro4989/gameoflife";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
