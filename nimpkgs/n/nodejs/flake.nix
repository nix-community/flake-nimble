{
  description = ''
    NodeJS Standard Library for Nim
  '';
  inputs.src-nodejs.url = "https://github.com/juancarlospaco/nodestdlib";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
