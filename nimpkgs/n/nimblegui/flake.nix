{
  description = ''
    A simple GUI front for Nimble.
  '';
  inputs.src-nimblegui.url = "https://github.com/ThomasTJdev/nim_nimble_gui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
