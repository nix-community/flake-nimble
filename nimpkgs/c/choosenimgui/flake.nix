{
  description = ''
    A simple GUI for choosenim.
  '';
  inputs.src-choosenimgui.url = "https://github.com/ThomasTJdev/choosenim_gui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
