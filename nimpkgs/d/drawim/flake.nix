{
  description = ''
    Simple library to draw stuff on a window
  '';
  inputs.src-drawim.url = "https://github.com/GabrielLasso/drawim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
