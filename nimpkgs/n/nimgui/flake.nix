{
  description = ''
    bindings to cimgui - https://github.com/cimgui/cimgui
  '';
  inputs.src-nimgui.url = "https://github.com/zacharycarter/nimgui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
