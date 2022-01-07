{
  description = ''
    Sphinx wrapper for Nim
  '';
  inputs.src-sphinx.url = "https://github.com/Araq/sphinx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
