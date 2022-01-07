{
  description = ''
    The Denim UI library
  '';
  inputs.src-denim_ui.url = "https://github.com/nortero-code/denim-ui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
