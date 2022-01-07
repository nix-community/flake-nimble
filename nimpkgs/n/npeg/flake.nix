{
  description = ''
    PEG (Parsing Expression Grammars) string matching library for Nim
  '';
  inputs.src-npeg.url = "https://github.com/zevv/npeg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
