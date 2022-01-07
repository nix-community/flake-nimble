{
  description = ''
    Cairo backend for the denim ui engine
  '';
  inputs.src-denim_ui_cairo.url = "https://github.com/nortero-code/midio-ui-cairo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
