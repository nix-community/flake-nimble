{
  description = ''
    Nim bindings for https://github.com/zserge/webview, a cross platform single header webview library
  '';
  inputs.src-webview.url = "https://github.com/oskca/webview";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
