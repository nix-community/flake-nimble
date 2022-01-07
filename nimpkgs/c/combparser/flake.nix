{
  description = ''
    A parser combinator library for easy generation of complex parsers
  '';
  inputs.src-combparser.url = "https://github.com/PMunch/combparser";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
