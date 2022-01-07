{
  description = ''
    Web Technologies based Crossplatform GUI, modified wrapper for modified webview.h
  '';
  inputs.src-webgui.url = "https://github.com/juancarlospaco/webgui";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
