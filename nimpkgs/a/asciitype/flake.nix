{
  description = ''
    This module performs character tests.
  '';
  inputs.src-asciitype.url = "https://github.com/chocobo333/asciitype";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
