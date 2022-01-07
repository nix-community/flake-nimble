{
  description = ''
    Binding for Qt 5's Qt SQL library that integrates with the features of the Nim language. Uses one API for multiple database engines.
  '';
  inputs.src-qt5_qtsql.url = "https://github.com/philip-wernersbach/nim-qt5_qtsql.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
