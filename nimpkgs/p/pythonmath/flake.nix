{
  description = ''
    Module to provide an interface as similar as possible to Python's math libary
  '';
  inputs.src-pythonmath.url = "https://github.com/achesak/nim-pythonmath";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
