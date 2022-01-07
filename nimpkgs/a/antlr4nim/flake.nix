{
  description = ''
    Nim interface to ANTLR4 listener/visitor via jsffi
  '';
  inputs.src-antlr4nim.url = "https://github.com/jan0sc/antlr4nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
