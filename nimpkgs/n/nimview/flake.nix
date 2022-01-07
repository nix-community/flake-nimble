{
  description = ''
    Nim / Python / C library to run webview with HTML/JS as UI
  '';
  inputs.src-nimview.url = "https://github.com/marcomq/nimview";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
