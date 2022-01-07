{
  description = ''
    UI building with Gnome's Glade
  '';
  inputs.src-uibuilder.url = "https://github.com/ba0f3/uibuilder.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
