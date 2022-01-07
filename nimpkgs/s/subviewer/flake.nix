{
  description = ''
    Nim module for parsing SubViewer subtitle files
  '';
  inputs.src-subviewer.url = "https://github.com/achesak/nim-subviewer";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
