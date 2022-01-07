{
  description = ''
    Various asynchronous tools for Nim
  '';
  inputs.src-asynctools.url = "https://github.com/cheatfate/asynctools";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
