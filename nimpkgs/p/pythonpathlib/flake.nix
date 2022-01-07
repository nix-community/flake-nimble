{
  description = ''
    Module for working with paths that is as similar as possible to Python's pathlib
  '';
  inputs.src-pythonpathlib.url = "https://github.com/achesak/nim-pythonpathlib.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
