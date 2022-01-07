{
  description = ''
    Provides a complex command-line parser
  '';
  inputs.src-argument_parser.url = "https://github.com/Xe/argument_parser/";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
