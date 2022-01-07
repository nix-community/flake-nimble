{
  description = ''
    a general ast pattern matching library with a focus on correctness and good error messages
  '';
  inputs.src-ast_pattern_matching.url = "https://github.com/krux02/ast-pattern-matching";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
