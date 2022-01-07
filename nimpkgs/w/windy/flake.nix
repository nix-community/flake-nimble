{
  description = ''
    Windowing library for Nim using OS native APIs.
  '';
  inputs.src-windy.url = "https://github.com/treeform/windy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
