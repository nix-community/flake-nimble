{
  description = ''
    Parser for Cirru syntax
  '';
  inputs.src-cirru_parser.url = "https://github.com/Cirru/parser.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
