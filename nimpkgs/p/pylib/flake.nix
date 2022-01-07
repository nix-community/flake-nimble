{
  description = ''
    Nim library with python-like functions and operators
  '';
  inputs.src-pylib.url = "https://github.com/Yardanico/nimpylib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
