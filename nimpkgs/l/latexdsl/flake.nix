{
  description = ''
    A DSL to generate LaTeX from Nim
  '';
  inputs.src-latexdsl.url = "https://github.com/Vindaar/LatexDSL";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
