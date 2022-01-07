{
  description = ''
    A module for generating lexer/parser.
  '';
  inputs.src-mcmurry.url = "https://github.com/chocobo333/mcmurry";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
