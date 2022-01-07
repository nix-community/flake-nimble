{
  description = ''
    Method & assignment cascades for Nim, inspired by Smalltalk & Dart.
  '';
  inputs.src-cascade.url = "https://github.com/citycide/cascade";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
