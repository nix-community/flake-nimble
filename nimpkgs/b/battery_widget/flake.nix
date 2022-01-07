{
  description = ''
    Battery widget for command prompt. Written in Nim
  '';
  inputs.src-battery_widget.url = "https://github.com/Cu7ious/nim-battery-widget";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
