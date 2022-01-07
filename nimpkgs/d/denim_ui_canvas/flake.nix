{
  description = ''
    HTML Canvas backend for the denim ui engine
  '';
  inputs.src-denim_ui_canvas.url = "https://github.com/nortero-code/denim-ui-canvas";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
